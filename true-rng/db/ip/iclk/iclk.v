// iclk.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module iclk (
		output wire  iclk_clk,       //    iclk.clk
		input  wire  iclk_en_oscena  // iclk_en.oscena
	);

	altera_int_osc int_osc_0 (
		.oscena (iclk_en_oscena), // oscena.oscena
		.clkout (iclk_clk)        // clkout.clk
	);

endmodule