module cdb_flash(clk_12mhz, ad, a, flash_ready, flash_nce, flash_noe, flash_nwe,
                 md0, md1, md2, cpu_nres, cpu_nmi, cpu_clk, cpu_rx, cpu_tx,
                 cpu_ncs, cpu_nwrl_nwr, cpu_nwrh_nlbs, cpu_nrd,
                 cpu_dpl, cpu_dph, led, ftdi_tx, ftdi_rx, ftdi_rts, ftdi_dtr);

input clk_12mhz;
inout [15:0] ad;
output [25:0] a = 26'h0000000;
input flash_ready;
output flash_nce = 1;
output flash_noe = 1;
output flash_nwe = 1;

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

output [7:0] led = 8'hAA;

output ftdi_tx = 1;
input ftdi_rx;
input ftdi_rts;
input ftdi_dtr;

// Internal signals
reg [15:0] databus_o = 16'h0000;
wire [15:0] databus_i;
reg databus_oe = 0;

wire clk_48mhz;
wire internal_rst;
wire pll_lock;

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
    .RESETB(1),
    .BYPASS(0),
    .REFERENCECLK(clk_12mhz),
    .PLLOUTGLOBAL(clk_48mhz)
);
assign internal_rst = !pll_lock;

endmodule
