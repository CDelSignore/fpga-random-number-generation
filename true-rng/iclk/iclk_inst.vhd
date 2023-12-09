	component iclk is
		port (
			iclk_en_oscena : in  std_logic := 'X'; -- oscena
			iclk_clk       : out std_logic         -- clk
		);
	end component iclk;

	u0 : component iclk
		port map (
			iclk_en_oscena => CONNECTED_TO_iclk_en_oscena, -- iclk_en.oscena
			iclk_clk       => CONNECTED_TO_iclk_clk        --    iclk.clk
		);

