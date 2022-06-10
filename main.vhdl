library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity PROIECT is
    Port ( 
    selectie0: in std_logic;
    selectie1: in std_logic;
    clk: in std_logic;
    reset:in std_logic; 
    ParalelLoad:in std_logic;
    D: in std_logic_vector(7 downto 0);
    Q: out std_logic_vector(7 downto 0));
end PROIECT;
 
architecture Behavioral of PROIECT is
    signal Qtemp: std_logic_vector(7 downto 0);
    signal Dtemp: std_logic_vector(7 downto 0);
begin
 
 Dtemp <= D;
 Q <= Qtemp;
 
process(clk) begin
    if reset = '1' then
        Qtemp <= (OTHERS => '0');
    elsif rising_edge(clk) then
        if selectie0 = '0' then
            if selectie1 = '0' then
            -- Registru paralel;
                if ParalelLoad = '1' then
                    Qtemp <= D;
                end if;
            elsif selectie1 = '1' then
            -- Registru inel;
                Qtemp(0) <= Dtemp(7);
                Qtemp(1) <= Dtemp(0);
                Qtemp(2) <= Dtemp(1);
                Qtemp(3) <= Dtemp(2);
                Qtemp(4) <= Dtemp(3);
                Qtemp(5) <= Dtemp(4);
                Qtemp(6) <= Dtemp(5);
                Qtemp(7) <= Dtemp(6);
            end if;
        elsif selectie0 = '1' then
            if selectie1 = '0' then
            -- Registru cu deplasare la stanga;
                Qtemp(0) <= Dtemp(1);
                Qtemp(1) <= Dtemp(2);
                Qtemp(2) <= Dtemp(3);
                Qtemp(3) <= Dtemp(4);
                Qtemp(4) <= Dtemp(5);
                Qtemp(5) <= Dtemp(6);
                Qtemp(6) <= Dtemp(7);
                Qtemp(7) <= '0';
            elsif selectie1 = '1' then
            -- Registru cu deplasare la dreapta;
                Qtemp(0) <= '0';
                Qtemp(1) <= Dtemp(0);
                Qtemp(2) <= Dtemp(1);
                Qtemp(3) <= Dtemp(2);
                Qtemp(4) <= Dtemp(3);
                Qtemp(5) <= Dtemp(4);
                Qtemp(6) <= Dtemp(5);
                Qtemp(7) <= Dtemp(6);
            end if;
        end if;
    end if;
    
end process;
                        
end Behavioral;
