library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.ALL;

entity RO_TRNG is
    Port ( trn : out std_logic_vector(20 downto 0);
	   reset : in  STD_LOGIC; 
	   sample: in STD_LOGIC;
		clk : in  std_logic);
end entity RO_TRNG;

architecture Behavioral of RO_TRNG is
    signal ring    : std_logic_vector(20 downto 0):= "100101101011011101001";
    signal ring2   : std_logic_vector(20 downto 0):= "110110101001110000111";
    signal clk_int : std_logic;
    attribute KEEP : string; 
    attribute KEEP of ring : signal is "true"; 

    component iclk is
        port (
            iclk_en_oscena : in  std_logic := 'X'; -- oscena
            iclk_clk       : out std_logic         -- clk
        );
    end component iclk; 

begin
    u0 : component iclk
		port map (
			iclk_clk       => clk_int,
            iclk_en_oscena => '1'
		);
  
    assert ring'length mod 2 = 1 report "Length of ring must be an odd number!" severity failure;
    assert ring'length = ring2'length report "Length of rings must be the same" severity failure;

    trn <= (ring xor ring2) when sample ='0';
    
    process (clk, clk_int,ring,reset) begin
        if reset='0' then
	        ring  <= "100101101011011101001";
            ring2 <= "110110101001110000111";
        else
            if rising_edge(clk_int) then
                for i in ring'range loop
                    if i = ring'left then
                        ring(i) <= not ring(0) after 1ns;
                    else
                        ring(i) <= not ring(i+1) after 1ns;
                    end if;
                end loop;
            end if;

            if rising_edge(clk) then
                for i in ring2'range loop
                    if i = ring2'left then
                        ring2(i) <= not ring2(0) after 1ns;
                    else
                        ring2(i) <= not ring2(i+1) after 1ns;
                    end if;
                end loop;
            end if;
	    end if;
    end process;

end Behavioral;
