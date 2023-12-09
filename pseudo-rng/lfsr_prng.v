module LFSR_PRNG(input clk, rst, input reg[5:0] seed, output reg [2:0] out);
	reg [5:0] D123456;
	reg [5:0] initial_val;

	
	always @(*) begin
		// Ensure that initial value is never 0x00
		if(seed == 6'b000000)
			initial_val = 6'b101100;
		else
			initial_val = seed;
		
		// Initialize output and internal register
		D123456 = initial_val;
		out = 3'b000;
	end

	always @(posedge clk or negedge rst) begin
		// Re-initialize if reset line high
		if(rst) begin
			D123456 = initial_val;
			out = 3'b000;

		// Otherwise, set output and perform parallel register operations
		end else begin
			out = {D123456[1], D123456[3], D123456[5]};

			D123456[5] <= D123456[4];
			D123456[4] <= D123456[3];
			D123456[3] <= D123456[2];
			D123456[2] <= D123456[1];
			D123456[1] <= D123456[0];
			D123456[0] <= (D123456[5] ^ D123456[4]);
		end
	end

endmodule