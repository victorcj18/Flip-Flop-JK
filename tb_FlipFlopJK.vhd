library IEEE;
use IEEE.std_logic_1164.all;
entity tb_FlipFlopJK is
end tb_FlipFlopJK;
--------------Connections--------
architecture Behavioral of tb_FlipFlopJK is
component FlipFlopJK is
    port (
        Q: out std_logic;
		  Qn: out std_logic;
        CLK: in std_logic;
		  J: in std_logic;
		  K: in std_logic);
end component;
-------------Signals---------------------
signal Q_in, Qn_in, J_in, K_in, CLK_in  : std_logic;
 
begin
------------Mapeo I/O-------------------
DUT: FlipFlopJK port map (
        Q=> Q_in,
        Qn => Qn_in,
        CLK=> CLK_in,
        J => J_in,
        K => K_in);
-----------Estimulacion Entradas---------------
process
begin
CLK_in<='0';
J_in<='0';
K_in<='0';
wait for 5 ns;
J_in<='0';
K_in<='1';
wait for 5 ns;
CLK_in<='1';
wait for 10 ns;
CLK_in<='0';

wait for 3 ns;
J_in<='1';
K_in<='0';
wait for 5 ns;
CLK_in<='1';
wait for 10 ns;
CLK_in<='0';

wait for 3 ns;
J_in<='0';
K_in<='1';
wait for 5 ns;
CLK_in<='1';
wait for 10 ns;
CLK_in<='0';

wait for 3 ns;
J_in<='1';
K_in<='1';
wait for 5 ns;
CLK_in<='1';
wait for 10 ns;
CLK_in<='0';
wait;
end process;
end Behavioral;
