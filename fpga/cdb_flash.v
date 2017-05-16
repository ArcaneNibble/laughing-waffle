module cdb_flash(clk_12mhz, ad, a, flash_ready, flash_nce, flash_noe, flash_nwe,
                 md0, md1, md2, cpu_nres, cpu_nmi, cpu_clk, cpu_rx, cpu_tx,
                 cpu_ncs, cpu_nwrl_nwr, cpu_nwrh_nlbs, cpu_nrd,
                 cpu_dpl, cpu_dph, led, ftdi_tx, ftdi_rx, ftdi_rts, ftdi_dtr);

input clk_12mhz;
inout [15:0] ad;
output [25:0] a;
input flash_ready;
output flash_nce;
output flash_noe;
output flash_nwe;

output md0 = 0;
output md1 = 0;
output md2 = 0;

output cpu_nres = 0;
output cpu_nmi = 0;
output cpu_clk = 0;
output cpu_rx = 1;
input cpu_tx;
input [7:0] cpu_ncs;
input cpu_nwrl_nwr;
input cpu_nwrh_nlbs;
input cpu_nrd;
input cpu_dpl;
input cpu_dph;

output [7:0] led;

output ftdi_tx;
input ftdi_rx;
input ftdi_rts;
input ftdi_dtr;

// Internal signals
reg [25:0] flash_a;
assign a = flash_a;
reg [15:0] databus_o;
wire [15:0] databus_i;
reg databus_oe;

wire clk_48mhz;
wire internal_rst;
wire pll_lock;

// Uart signals
wire [7:0] uart_in_data;
wire uart_in_ready;
wire uart_in_busy;
reg [7:0] uart_out_data;
reg uart_out_ready;
wire uart_out_busy;

parameter IDLE          = 5'b00000;
parameter ADDR0L        = 5'b00001;
parameter ADDR0H        = 5'b00010;
parameter ADDR1L        = 5'b00011;
parameter ADDR1H        = 5'b00100;
parameter ADDR2L        = 5'b00101;
parameter ADDR2H        = 5'b00110;
parameter ADDR3L        = 5'b00111;
// >70 ns
parameter READ_DELAY0   = 5'b01000;
parameter READ_DELAY1   = 5'b01001;
parameter READ_DELAY2   = 5'b01010;
parameter READ_DELAY3   = 5'b01011;
parameter READ_RESULT0  = 5'b01100;
parameter READ_RESULT1  = 5'b01101;
parameter READ_RESULT2  = 5'b01110;
parameter READ_RESULT3  = 5'b01111;
parameter WRITE_VAL0    = 5'b10000;
parameter WRITE_VAL1    = 5'b10001;
parameter WRITE_VAL2    = 5'b10010;
parameter WRITE_VAL3    = 5'b10011;
parameter WRITE_DELAY0  = 5'b10100;
parameter WRITE_DELAY1  = 5'b10101;
parameter WRITE_DELAY2  = 5'b10110;
parameter WRITE_DELAY3  = 5'b10111;
reg [4:0] fsm_state;
reg [4:0] next_fsm_state;

reg [15:0] read_buffer;

// IO buffers that can't be auto-inferred
genvar i;
for (i = 0; i < 16; i=i+1) begin
    SB_IO #(
        .PIN_TYPE(6'b1010_01),
        .PULLUP(1'b0)
    ) databus_iobuf (
        .PACKAGE_PIN(ad[i]),
        .OUTPUT_ENABLE(databus_oe),
        .D_OUT_0(databus_o[i]),
        .D_IN_0(databus_i[i])
    );
end

// PLL for 48 MHz
SB_PLL40_CORE #(
    .PLLOUT_SELECT("GENCLK"),
    .FEEDBACK_PATH("SIMPLE"),
    .DIVR(4'b0000),     // DIVR =  0
    .DIVF(7'b0111111),  // DIVF = 63
    .DIVQ(3'b100),      // DIVQ =  4
    .FILTER_RANGE(3'b001)   // FILTER_RANGE = 1
) pll (
    .LOCK(pll_lock),
    .RESETB(1'b1),
    .BYPASS(1'b0),
    .REFERENCECLK(clk_12mhz),
    .PLLOUTGLOBAL(clk_48mhz)
);
assign internal_rst = !pll_lock;

// Simple UART module
UART uart(
    .clk(clk_48mhz),
    .clkdiv(16'd48),

    .tx(ftdi_tx),
    .txin(uart_out_data),
    .txrdy(uart_out_ready),
    .txactive(uart_out_busy),

    .rx(ftdi_rx),
    .rxout(uart_in_data),
    .rxrdy(uart_in_ready),
    .rxactive(uart_in_busy)
);

function [3:0] ascii_to_binary;
    input [7:0] ascii;

    case (ascii)
        8'h30: ascii_to_binary = 4'h0;
        8'h31: ascii_to_binary = 4'h1;
        8'h32: ascii_to_binary = 4'h2;
        8'h33: ascii_to_binary = 4'h3;
        8'h34: ascii_to_binary = 4'h4;
        8'h35: ascii_to_binary = 4'h5;
        8'h36: ascii_to_binary = 4'h6;
        8'h37: ascii_to_binary = 4'h7;
        8'h38: ascii_to_binary = 4'h8;
        8'h39: ascii_to_binary = 4'h9;
        8'h41, 8'h61: ascii_to_binary = 4'ha;
        8'h42, 8'h62: ascii_to_binary = 4'hb;
        8'h43, 8'h63: ascii_to_binary = 4'hc;
        8'h44, 8'h64: ascii_to_binary = 4'hd;
        8'h45, 8'h65: ascii_to_binary = 4'he;
        8'h46, 8'h66: ascii_to_binary = 4'hf;
        default: ascii_to_binary = 4'h0;
    endcase
endfunction

function [7:0] binary_to_ascii;
    input [3:0] binary;

    case (binary)
        4'h0: binary_to_ascii = 8'h30;
        4'h1: binary_to_ascii = 8'h31;
        4'h2: binary_to_ascii = 8'h32;
        4'h3: binary_to_ascii = 8'h33;
        4'h4: binary_to_ascii = 8'h34;
        4'h5: binary_to_ascii = 8'h35;
        4'h6: binary_to_ascii = 8'h36;
        4'h7: binary_to_ascii = 8'h37;
        4'h8: binary_to_ascii = 8'h38;
        4'h9: binary_to_ascii = 8'h39;
        4'ha: binary_to_ascii = 8'h41;
        4'hb: binary_to_ascii = 8'h42;
        4'hc: binary_to_ascii = 8'h43;
        4'hd: binary_to_ascii = 8'h44;
        4'he: binary_to_ascii = 8'h45;
        4'hf: binary_to_ascii = 8'h46;
    endcase
endfunction

// Test loopback FSM
assign led[6] = uart_in_ready;
assign led[5] = uart_out_busy;
assign led[4:0] = fsm_state;
// Sequential logic
always @(posedge clk_48mhz) begin
    if (internal_rst == 1) begin
        fsm_state <= IDLE;

        flash_a <= 26'h000000;
        databus_o <= 16'h0000;
    end else begin
        fsm_state <= next_fsm_state;

        case (fsm_state)
            ADDR0L: begin
                if (uart_in_ready == 1) begin
                    flash_a[3:0] <= ascii_to_binary(uart_in_data);
                end
            end
            ADDR0H: begin
                if (uart_in_ready == 1) begin
                    flash_a[7:4] <= ascii_to_binary(uart_in_data);
                end
            end
            ADDR1L: begin
                if (uart_in_ready == 1) begin
                    flash_a[11:8] <= ascii_to_binary(uart_in_data);
                end
            end
            ADDR1H: begin
                if (uart_in_ready == 1) begin
                    flash_a[15:12] <= ascii_to_binary(uart_in_data);
                end
            end
            ADDR2L: begin
                if (uart_in_ready == 1) begin
                    flash_a[19:16] <= ascii_to_binary(uart_in_data);
                end
            end
            ADDR2H: begin
                if (uart_in_ready == 1) begin
                    flash_a[23:20] <= ascii_to_binary(uart_in_data);
                end
            end
            ADDR3L: begin
                if (uart_in_ready == 1) begin
                    flash_a[25:24] <= ascii_to_binary(uart_in_data);
                end
            end

            READ_DELAY3: begin
                flash_a <= flash_a + 1;
                read_buffer <= databus_i;
            end

            WRITE_VAL0: begin
                if (uart_in_ready == 1) begin
                    databus_o[3:0] <= ascii_to_binary(uart_in_data);
                end
            end
            WRITE_VAL1: begin
                if (uart_in_ready == 1) begin
                    databus_o[7:4] <= ascii_to_binary(uart_in_data);
                end
            end
            WRITE_VAL2: begin
                if (uart_in_ready == 1) begin
                    databus_o[11:8] <= ascii_to_binary(uart_in_data);
                end
            end
            WRITE_VAL3: begin
                if (uart_in_ready == 1) begin
                    databus_o[15:12] <= ascii_to_binary(uart_in_data);
                end
            end
        endcase
    end
end
// State transition logic
always @(*) begin
    case (fsm_state)
        IDLE: begin
            if (uart_in_ready == 1 && uart_in_data == 8'h41) begin
                next_fsm_state <= ADDR0L;
            end else if (uart_in_ready == 1 && uart_in_data == 8'h52) begin
                next_fsm_state <= READ_DELAY0;
            end else if (uart_in_ready == 1 && uart_in_data == 8'h57) begin
                next_fsm_state <= WRITE_VAL0;
            end else begin
                next_fsm_state <= IDLE;
            end
        end

        ADDR0L: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= ADDR0H;
            end else begin
                next_fsm_state <= ADDR0L;
            end
        end
        ADDR0H: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= ADDR1L;
            end else begin
                next_fsm_state <= ADDR0H;
            end
        end
        ADDR1L: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= ADDR1H;
            end else begin
                next_fsm_state <= ADDR1L;
            end
        end
        ADDR1H: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= ADDR2L;
            end else begin
                next_fsm_state <= ADDR1H;
            end
        end
        ADDR2L: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= ADDR2H;
            end else begin
                next_fsm_state <= ADDR2L;
            end
        end
        ADDR2H: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= ADDR3L;
            end else begin
                next_fsm_state <= ADDR2H;
            end
        end
        ADDR3L: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= IDLE;
            end else begin
                next_fsm_state <= ADDR3L;
            end
        end

        READ_DELAY0: next_fsm_state <= READ_DELAY1;
        READ_DELAY1: next_fsm_state <= READ_DELAY2;
        READ_DELAY2: next_fsm_state <= READ_DELAY3;
        READ_DELAY3: next_fsm_state <= READ_RESULT0;

        READ_RESULT0: begin
            if (uart_out_busy == 0) begin
                next_fsm_state <= READ_RESULT1;
            end else begin
                next_fsm_state <= READ_RESULT0;
            end
        end
        READ_RESULT1: begin
            if (uart_out_busy == 0) begin
                next_fsm_state <= READ_RESULT2;
            end else begin
                next_fsm_state <= READ_RESULT1;
            end
        end
        READ_RESULT2: begin
            if (uart_out_busy == 0) begin
                next_fsm_state <= READ_RESULT3;
            end else begin
                next_fsm_state <= READ_RESULT2;
            end
        end
        READ_RESULT3: begin
            if (uart_out_busy == 0) begin
                next_fsm_state <= IDLE;
            end else begin
                next_fsm_state <= READ_RESULT3;
            end
        end

        WRITE_VAL0: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= WRITE_VAL1;
            end else begin
                next_fsm_state <= WRITE_VAL0;
            end
        end
        WRITE_VAL1: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= WRITE_VAL2;
            end else begin
                next_fsm_state <= WRITE_VAL1;
            end
        end
        WRITE_VAL2: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= WRITE_VAL3;
            end else begin
                next_fsm_state <= WRITE_VAL2;
            end
        end
        WRITE_VAL3: begin
            if (uart_in_ready == 1) begin
                next_fsm_state <= WRITE_DELAY0;
            end else begin
                next_fsm_state <= WRITE_VAL3;
            end
        end

        WRITE_DELAY0: next_fsm_state <= WRITE_DELAY1;
        WRITE_DELAY1: next_fsm_state <= WRITE_DELAY2;
        WRITE_DELAY2: next_fsm_state <= WRITE_DELAY3;
        WRITE_DELAY3: next_fsm_state <= IDLE;

        default: begin
            next_fsm_state <= IDLE;
        end
    endcase
end
// Output logic
always @(*) begin
    case (fsm_state)
        READ_DELAY0, READ_DELAY1, READ_DELAY2, READ_DELAY3: begin
            uart_out_data <= 8'h00;
            uart_out_ready <= 0;

            flash_nce <= 0;
            flash_noe <= 0;
            flash_nwe <= 1;
            databus_oe <= 0;
        end

        READ_RESULT0: begin
            flash_nce <= 1;
            flash_noe <= 1;
            flash_nwe <= 1;
            databus_oe <= 0;

            if (uart_out_busy == 0) begin
                uart_out_data <= binary_to_ascii(read_buffer[3:0]);
                uart_out_ready <= 1;
            end else begin
                uart_out_data <= 8'h00;
                uart_out_ready <= 0;
            end
        end
        READ_RESULT1: begin
            flash_nce <= 1;
            flash_noe <= 1;
            flash_nwe <= 1;
            databus_oe <= 0;

            if (uart_out_busy == 0) begin
                uart_out_data <= binary_to_ascii(read_buffer[7:4]);
                uart_out_ready <= 1;
            end else begin
                uart_out_data <= 8'h00;
                uart_out_ready <= 0;
            end
        end
        READ_RESULT2: begin
            flash_nce <= 1;
            flash_noe <= 1;
            flash_nwe <= 1;
            databus_oe <= 0;

            if (uart_out_busy == 0) begin
                uart_out_data <= binary_to_ascii(read_buffer[11:8]);
                uart_out_ready <= 1;
            end else begin
                uart_out_data <= 8'h00;
                uart_out_ready <= 0;
            end
        end
        READ_RESULT3: begin
            flash_nce <= 1;
            flash_noe <= 1;
            flash_nwe <= 1;
            databus_oe <= 0;

            if (uart_out_busy == 0) begin
                uart_out_data <= binary_to_ascii(read_buffer[15:12]);
                uart_out_ready <= 1;
            end else begin
                uart_out_data <= 8'h00;
                uart_out_ready <= 0;
            end
        end

        WRITE_DELAY0, WRITE_DELAY1, WRITE_DELAY2, WRITE_DELAY3: begin
            uart_out_data <= 8'h00;
            uart_out_ready <= 0;

            flash_nce <= 0;
            flash_noe <= 1;
            flash_nwe <= 0;
            databus_oe <= 1;
        end

        default: begin
            uart_out_data <= 8'h00;
            uart_out_ready <= 0;

            flash_nce <= 1;
            flash_noe <= 1;
            flash_nwe <= 1;
            databus_oe <= 0;
        end
    endcase
end

endmodule
