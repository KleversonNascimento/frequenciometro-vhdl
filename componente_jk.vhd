-- https://www.tutorialspoint.com/vlsi_design/vhdl_programming_for_sequential_circuits.htm
library IEEE; 
use IEEE.STD_LOGIC_1164.all;  

entity componente_jk is 
   port(
      j : in STD_LOGIC; 
      k : in STD_LOGIC; 
      clk : in STD_LOGIC; 
      reset : in STD_LOGIC; 
      q : out STD_LOGIC; 
      qb : out STD_LOGIC 
   ); 
end componente_jk;
  
architecture virat of componente_jk is 
begin 
   jkff : process (j,k,clk,reset) is 
   variable m : std_logic := '0'; 
   
   begin 
      if (reset = '0') then 
         m := '0'; 
      elsif (rising_edge (clk)) then 
         if (j /= k) then
            m := j; 
         elsif (j = '1' and k = '1') then 
            m := not m; 
         end if; 
      end if; 
      
      q <= m; 
      qb <= not m; 
   end process jkff; 
end virat;