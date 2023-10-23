library IEEE;
use IEEE.std_logic_1164.all;
entity FlipFlopJK is
    port (
        Q: out std_logic;
		  Qn: out std_logic;
        CLK: in std_logic;
		  J: in std_logic;
		  K: in std_logic);
end entity;
architecture Behavioral of FlipFlopJK is
signal Q_out: STD_LOGIC;
signal Qn_out: STD_LOGIC;
begin
JKff_process: process (CLK, J, K)
begin
if rising_edge (CLK) then
if J= '0' and K = '0' then
Q_out <= Q_out; 
Qn_out <= Qn_out;
elsif J = '0' and K = '1' then
Q_out <= '0' ;
Qn_out <='1' ;
elsif J = '1' and K = '0' then	
Q_out <= '1' ;
Qn_out <= '0' ;
else
Q_out <= not Q_out;
Qn_out <= not Qn_out;
end if;
end if;
Q<= Q_out;
Qn<= Qn_out;
end process JKff_process;
end Behavioral;
