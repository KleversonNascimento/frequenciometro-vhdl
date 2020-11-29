-- https://www.tutorialspoint.com/vlsi_design/vhdl_programming_for_sequential_circuits.htm
-- falling_edge: https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwi5i7X1qqjtAhXoH7kGHWs5DrcQFjAAegQIAhAC&url=http%3A%2F%2Fpaginapessoal.utfpr.edu.br%2Ferig%2Flogica-reconfiguravel%2FVHDL%2Fvhdl5.pdf%2Fat_download%2Ffile&usg=AOvVaw0PKd04ajI1MbGTZesxjloO
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