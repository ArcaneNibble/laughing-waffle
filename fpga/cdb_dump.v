`default_nettype none

module cdb_dump(clk_12mhz, ad, a, flash_ready, flash_nce, flash_noe, flash_nwe,
                 md0, md1, md2, cpu_nres, cpu_nmi, cpu_clk, cpu_rx, cpu_tx,
                 cpu_ncs, cpu_nwrl_nwr, cpu_nwrh_nlbs, cpu_nrd,
                 cpu_dpl, cpu_dph, led, ftdi_tx, ftdi_rx, ftdi_rts, ftdi_dtr);

input clk_12mhz;
inout [15:0] ad;
input [25:0] a;
input flash_ready;
output flash_nce = 1;
output flash_noe = 1;
output flash_nwe = 1;

output md0;
output md1;
output md2;

output cpu_nres;
output cpu_nmi = 1;
output cpu_clk;
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
reg [15:0] databus_o;
wire [15:0] databus_i;
reg databus_oe;

wire clk_48mhz;
wire internal_rst;
wire pll_lock;

reg [15:0] dump_rom[0:8191];
initial begin
    `include "dump_bin.vh"
end

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

assign cpu_clk = clk_12mhz;

// CPU reset logic
reg [23:0] cpu_reset_counter;
always @(posedge clk_48mhz) begin
    if (internal_rst == 1) begin
        cpu_reset_counter <= 24'h000000;
    end else begin
        if (cpu_reset_counter != 24'hffffff) begin
            cpu_reset_counter <= cpu_reset_counter + 1;
        end
    end
end
always @(*) begin
    if (cpu_reset_counter == 24'hffffff)
        cpu_nres <= 1;
    else
        cpu_nres <= 0;
end
assign led[7] = cpu_nres;

// Synchronizer
reg [25:0] addr_clk;
reg [7:0] cpu_ncs_clk;
reg cpu_nrd_clk;
reg cpu_nwrl_nwr_clk;
reg cpu_nwrh_nlbs_clk;
reg [15:0] databus_i_clk;
reg [25:0] addr_clk_clk;
reg [7:0] cpu_ncs_clk_clk;
reg cpu_nrd_clk_clk;
reg cpu_nwrl_nwr_clk_clk;
reg cpu_nwrh_nlbs_clk_clk;
reg [15:0] databus_i_clk_clk;
reg cpu_nwrl_nwr_clk_clk_clk;
reg cpu_nwrh_nlbs_clk_clk_clk;

always @(posedge clk_48mhz) begin
    addr_clk <= a;
    cpu_ncs_clk <= cpu_ncs;
    cpu_nrd_clk <= cpu_nrd;
    cpu_nwrl_nwr_clk <= cpu_nwrl_nwr;
    cpu_nwrh_nlbs_clk <= cpu_nwrh_nlbs;
    databus_i_clk <= databus_i;
    addr_clk_clk <= addr_clk;
    cpu_ncs_clk_clk <= cpu_ncs_clk;
    cpu_nrd_clk_clk <= cpu_nrd_clk;
    cpu_nwrl_nwr_clk_clk <= cpu_nwrl_nwr_clk;
    cpu_nwrh_nlbs_clk_clk <= cpu_nwrh_nlbs_clk;
    databus_i_clk_clk <= databus_i_clk;
    cpu_nwrl_nwr_clk_clk_clk <= cpu_nwrl_nwr_clk_clk;
    cpu_nwrh_nlbs_clk_clk_clk <= cpu_nwrh_nlbs_clk_clk;
end

always @(*) begin
    databus_o <= dump_rom[addr_clk_clk[13:1]];

    if ((cpu_ncs_clk_clk[0] == 0 || cpu_ncs_clk_clk[2] == 0) && cpu_nrd_clk_clk == 0) begin
        databus_oe <= 1;
    end else begin
        databus_oe <= 0;
    end
end

// Write data stuff
reg [7:0] test_reg;
reg [7:0] uart_reg;
reg [2:0] mode_reg;
initial mode_reg = 3'b001;
reg uart_reg_ready;
reg uart_tx_done;
always @(posedge clk_48mhz) begin
    if (uart_tx_done == 1) begin
        uart_reg_ready <= 0;
    end
    if (cpu_ncs_clk_clk[2] == 0 && cpu_nwrl_nwr_clk_clk == 1 && cpu_nwrl_nwr_clk_clk_clk == 0) begin
        case (addr_clk_clk)
            26'h0000000: begin
                test_reg <= databus_i_clk_clk[7:0];
            end
            26'h0000002: begin
                uart_reg <= databus_i_clk_clk[7:0];
                uart_reg_ready <= 1;
            end
            26'h0000004: begin
                mode_reg <= databus_i_clk_clk[2:0];
            end
        endcase
    end
end
assign led[6:0] = test_reg[6:0];
assign md2 = mode_reg[2];
assign md1 = mode_reg[1];
assign md0 = mode_reg[0];

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

// Uart signals
wire [7:0] uart_in_data;
wire uart_in_ready;
wire uart_in_busy;
reg [7:0] uart_out_data;
reg uart_out_ready;
wire uart_out_busy;

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

parameter UART_IDLE     = 3'b000;
parameter UART_TX0      = 3'b001;
parameter UART_TX1      = 3'b010;
reg [2:0] uart_fsm;
reg [2:0] uart_fsm_next;

always @(posedge clk_48mhz) begin
    if (internal_rst == 1) begin
        uart_fsm <= UART_IDLE;
    end else begin
        uart_fsm <= uart_fsm_next;

        if (uart_fsm == UART_TX0 && uart_fsm_next == UART_TX1)
            uart_tx_done <= 1;
        else
            uart_tx_done <= 0;
    end
end

always @(*) begin
    case (uart_fsm)
        UART_IDLE: begin
            if (uart_reg_ready == 1) begin
                uart_fsm_next <= UART_TX0;
            end else begin
                uart_fsm_next <= UART_IDLE;
            end
        end
        UART_TX0: begin
            if (uart_out_busy == 0) begin
                uart_fsm_next <= UART_TX1;
            end else begin
                uart_fsm_next <= UART_TX0;
            end
        end
        UART_TX1: begin
            if (uart_out_busy == 0) begin
                uart_fsm_next <= UART_IDLE;
            end else begin
                uart_fsm_next <= UART_TX1;
            end
        end
        default: begin
            uart_fsm_next <= UART_IDLE;
        end
    endcase
end

always @(*) begin
    case (uart_fsm)
        UART_TX0: begin
            if (uart_out_busy == 0) begin
                uart_out_data <= binary_to_ascii(uart_reg[7:4]);
                uart_out_ready <= 1;
            end else begin
                uart_out_data <= 8'h00;
                uart_out_ready <= 0;
            end
        end
        UART_TX1: begin
            if (uart_out_busy == 0) begin
                uart_out_data <= binary_to_ascii(uart_reg[3:0]);
                uart_out_ready <= 1;
            end else begin
                uart_out_data <= 8'h00;
                uart_out_ready <= 0;
            end
        end
        default: begin
            uart_out_data <= 8'h00;
            uart_out_ready <= 0;
        end
    endcase
end

endmodule
