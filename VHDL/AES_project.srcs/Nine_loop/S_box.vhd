----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/03/2022 12:13:24 PM
-- Design Name: 
-- Module Name: sub_bytes - Beh_sub_bytes
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

                    

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity S_box is
    Port ( byte_in : in STD_LOGIC_VECTOR (7 downto 0);
           byte_out : out STD_LOGIC_VECTOR (7 downto 0);
           
           clk, rst,en : in STD_LOGIC              -- for the clk and rst, I changed the original program and added clk & rst signal here...
           
           );
end S_box;

architecture Behavioral of S_box is
begin
    
	proc: process (rst, clk)
	begin
	   if(rst = '1') then 
	       byte_out <= x"00";
	   elsif(rst = '0') and (rising_edge(clk)) then
	           if (en = '1') then
                       case byte_in is
                            when x"00" => byte_out <= x"63";
                            when x"01" => byte_out <= x"7c";
                            when x"02" => byte_out <= x"77";
                            when x"03" => byte_out <= x"7b";
                            when x"04" => byte_out <= x"f2";
                            when x"05" => byte_out <= x"6b";
                            when x"06" => byte_out <= x"6f";
                            when x"07" => byte_out <= x"c5";
                            when x"08" => byte_out <= x"30";
                            when x"09" => byte_out <= x"01";
                            when x"0a" => byte_out <= x"67";
                            when x"0b" => byte_out <= x"2b";
                            when x"0c" => byte_out <= x"fe";
                            when x"0d" => byte_out <= x"d7";
                            when x"0e" => byte_out <= x"ab";
                            when x"0f" => byte_out <= x"76";
                            when x"10" => byte_out <= x"ca";
                            when x"11" => byte_out <= x"82";
                            when x"12" => byte_out <= x"c9";
                            when x"13" => byte_out <= x"7d";
                            when x"14" => byte_out <= x"fa";
                            when x"15" => byte_out <= x"59";
                            when x"16" => byte_out <= x"47";
                            when x"17" => byte_out <= x"f0";
                            when x"18" => byte_out <= x"ad";
                            when x"19" => byte_out <= x"d4";
                            when x"1a" => byte_out <= x"a2";
                            when x"1b" => byte_out <= x"af";
                            when x"1c" => byte_out <= x"9c";
                            when x"1d" => byte_out <= x"a4";
                            when x"1e" => byte_out <= x"72";
                            when x"1f" => byte_out <= x"c0";
                            when x"20" => byte_out <= x"b7";
                            when x"21" => byte_out <= x"fd";
                            when x"22" => byte_out <= x"93";
                            when x"23" => byte_out <= x"26";
                            when x"24" => byte_out <= x"36";
                            when x"25" => byte_out <= x"3f";
                            when x"26" => byte_out <= x"f7";
                            when x"27" => byte_out <= x"cc";
                            when x"28" => byte_out <= x"34";
                            when x"29" => byte_out <= x"a5";
                            when x"2a" => byte_out <= x"e5";
                            when x"2b" => byte_out <= x"f1";
                            when x"2c" => byte_out <= x"71";
                            when x"2d" => byte_out <= x"d8";
                            when x"2e" => byte_out <= x"31";
                            when x"2f" => byte_out <= x"15";
                            when x"30" => byte_out <= x"04";
                            when x"31" => byte_out <= x"c7";
                            when x"32" => byte_out <= x"23";
                            when x"33" => byte_out <= x"c3";
                            when x"34" => byte_out <= x"18";
                            when x"35" => byte_out <= x"96";
                            when x"36" => byte_out <= x"05";
                            when x"37" => byte_out <= x"9a";
                            when x"38" => byte_out <= x"07";
                            when x"39" => byte_out <= x"12";
                            when x"3a" => byte_out <= x"80";
                            when x"3b" => byte_out <= x"e2";
                            when x"3c" => byte_out <= x"eb";
                            when x"3d" => byte_out <= x"27";
                            when x"3e" => byte_out <= x"b2";
                            when x"3f" => byte_out <= x"75";
                            when x"40" => byte_out <= x"09";
                            when x"41" => byte_out <= x"83";
                            when x"42" => byte_out <= x"2c";
                            when x"43" => byte_out <= x"1a";
                            when x"44" => byte_out <= x"1b";
                            when x"45" => byte_out <= x"6e";
                            when x"46" => byte_out <= x"5a";
                            when x"47" => byte_out <= x"a0";
                            when x"48" => byte_out <= x"52";
                            when x"49" => byte_out <= x"3b";
                            when x"4a" => byte_out <= x"d6";
                            when x"4b" => byte_out <= x"b3";
                            when x"4c" => byte_out <= x"29";
                            when x"4d" => byte_out <= x"e3";
                            when x"4e" => byte_out <= x"2f";
                            when x"4f" => byte_out <= x"84";
                            when x"50" => byte_out <= x"53";
                            when x"51" => byte_out <= x"d1";
                            when x"52" => byte_out <= x"00";
                            when x"53" => byte_out <= x"ed";
                            when x"54" => byte_out <= x"20";
                            when x"55" => byte_out <= x"fc";
                            when x"56" => byte_out <= x"b1";
                            when x"57" => byte_out <= x"5b";
                            when x"58" => byte_out <= x"6a";
                            when x"59" => byte_out <= x"cb";
                            when x"5a" => byte_out <= x"be";
                            when x"5b" => byte_out <= x"39";
                            when x"5c" => byte_out <= x"4a";
                            when x"5d" => byte_out <= x"4c";
                            when x"5e" => byte_out <= x"58";
                            when x"5f" => byte_out <= x"cf";
                            when x"60" => byte_out <= x"d0";
                            when x"61" => byte_out <= x"ef";
                            when x"62" => byte_out <= x"aa";
                            when x"63" => byte_out <= x"fb";
                            when x"64" => byte_out <= x"43";
                            when x"65" => byte_out <= x"4d";
                            when x"66" => byte_out <= x"33";
                            when x"67" => byte_out <= x"85";
                            when x"68" => byte_out <= x"45";
                            when x"69" => byte_out <= x"f9";
                            when x"6a" => byte_out <= x"02";
                            when x"6b" => byte_out <= x"7f";
                            when x"6c" => byte_out <= x"50";
                            when x"6d" => byte_out <= x"3c";
                            when x"6e" => byte_out <= x"9f";
                            when x"6f" => byte_out <= x"a8";
                            when x"70" => byte_out <= x"51";
                            when x"71" => byte_out <= x"a3";
                            when x"72" => byte_out <= x"40";
                            when x"73" => byte_out <= x"8f";
                            when x"74" => byte_out <= x"92";
                            when x"75" => byte_out <= x"9d";
                            when x"76" => byte_out <= x"38";
                            when x"77" => byte_out <= x"f5";
                            when x"78" => byte_out <= x"bc";
                            when x"79" => byte_out <= x"b6";
                            when x"7a" => byte_out <= x"da";
                            when x"7b" => byte_out <= x"21";
                            when x"7c" => byte_out <= x"10";
                            when x"7d" => byte_out <= x"ff";
                            when x"7e" => byte_out <= x"f3";
                            when x"7f" => byte_out <= x"d2";
                            when x"80" => byte_out <= x"cd";
                            when x"81" => byte_out <= x"0c";
                            when x"82" => byte_out <= x"13";
                            when x"83" => byte_out <= x"ec";
                            when x"84" => byte_out <= x"5f";
                            when x"85" => byte_out <= x"97";
                            when x"86" => byte_out <= x"44";
                            when x"87" => byte_out <= x"17";
                            when x"88" => byte_out <= x"c4";
                            when x"89" => byte_out <= x"a7";
                            when x"8a" => byte_out <= x"7e";
                            when x"8b" => byte_out <= x"3d";
                            when x"8c" => byte_out <= x"64";
                            when x"8d" => byte_out <= x"5d";
                            when x"8e" => byte_out <= x"19";
                            when x"8f" => byte_out <= x"73";
                            when x"90" => byte_out <= x"60";
                            when x"91" => byte_out <= x"81";
                            when x"92" => byte_out <= x"4f";
                            when x"93" => byte_out <= x"dc";
                            when x"94" => byte_out <= x"22";
                            when x"95" => byte_out <= x"2a";
                            when x"96" => byte_out <= x"90";
                            when x"97" => byte_out <= x"88";
                            when x"98" => byte_out <= x"46";
                            when x"99" => byte_out <= x"ee";
                            when x"9a" => byte_out <= x"b8";
                            when x"9b" => byte_out <= x"14";
                            when x"9c" => byte_out <= x"de";
                            when x"9d" => byte_out <= x"5e";
                            when x"9e" => byte_out <= x"0b";
                            when x"9f" => byte_out <= x"db";
                            when x"a0" => byte_out <= x"e0";
                            when x"a1" => byte_out <= x"32";
                            when x"a2" => byte_out <= x"3a";
                            when x"a3" => byte_out <= x"0a";
                            when x"a4" => byte_out <= x"49";
                            when x"a5" => byte_out <= x"06";
                            when x"a6" => byte_out <= x"24";
                            when x"a7" => byte_out <= x"5c";
                            when x"a8" => byte_out <= x"c2";
                            when x"a9" => byte_out <= x"d3";
                            when x"aa" => byte_out <= x"ac";
                            when x"ab" => byte_out <= x"62";
                            when x"ac" => byte_out <= x"91";
                            when x"ad" => byte_out <= x"95";
                            when x"ae" => byte_out <= x"e4";
                            when x"af" => byte_out <= x"79";
                            when x"b0" => byte_out <= x"e7";
                            when x"b1" => byte_out <= x"c8";
                            when x"b2" => byte_out <= x"37";
                            when x"b3" => byte_out <= x"6d";
                            when x"b4" => byte_out <= x"8d";
                            when x"b5" => byte_out <= x"d5";
                            when x"b6" => byte_out <= x"4e";
                            when x"b7" => byte_out <= x"a9";
                            when x"b8" => byte_out <= x"6c";
                            when x"b9" => byte_out <= x"56";
                            when x"ba" => byte_out <= x"f4";
                            when x"bb" => byte_out <= x"ea";
                            when x"bc" => byte_out <= x"65";
                            when x"bd" => byte_out <= x"7a";
                            when x"be" => byte_out <= x"ae";
                            when x"bf" => byte_out <= x"08";
                            when x"c0" => byte_out <= x"ba";
                            when x"c1" => byte_out <= x"78";
                            when x"c2" => byte_out <= x"25";
                            when x"c3" => byte_out <= x"2e";
                            when x"c4" => byte_out <= x"1c";
                            when x"c5" => byte_out <= x"a6";
                            when x"c6" => byte_out <= x"b4";
                            when x"c7" => byte_out <= x"c6";
                            when x"c8" => byte_out <= x"e8";
                            when x"c9" => byte_out <= x"dd";
                            when x"ca" => byte_out <= x"74";
                            when x"cb" => byte_out <= x"1f";
                            when x"cc" => byte_out <= x"4b";
                            when x"cd" => byte_out <= x"bd";
                            when x"ce" => byte_out <= x"8b";
                            when x"cf" => byte_out <= x"8a";
                            when x"d0" => byte_out <= x"70";
                            when x"d1" => byte_out <= x"3e";
                            when x"d2" => byte_out <= x"b5";
                            when x"d3" => byte_out <= x"66";
                            when x"d4" => byte_out <= x"48";
                            when x"d5" => byte_out <= x"03";
                            when x"d6" => byte_out <= x"f6";
                            when x"d7" => byte_out <= x"0e";
                            when x"d8" => byte_out <= x"61";
                            when x"d9" => byte_out <= x"35";
                            when x"da" => byte_out <= x"57";
                            when x"db" => byte_out <= x"b9";
                            when x"dc" => byte_out <= x"86";
                            when x"dd" => byte_out <= x"c1";
                            when x"de" => byte_out <= x"1d";
                            when x"df" => byte_out <= x"9e";
                            when x"e0" => byte_out <= x"e1";
                            when x"e1" => byte_out <= x"f8";
                            when x"e2" => byte_out <= x"98";
                            when x"e3" => byte_out <= x"11";
                            when x"e4" => byte_out <= x"69";
                            when x"e5" => byte_out <= x"d9";
                            when x"e6" => byte_out <= x"8e";
                            when x"e7" => byte_out <= x"94";
                            when x"e8" => byte_out <= x"9b";
                            when x"e9" => byte_out <= x"1e";
                            when x"ea" => byte_out <= x"87";
                            when x"eb" => byte_out <= x"e9";
                            when x"ec" => byte_out <= x"ce";
                            when x"ed" => byte_out <= x"55";
                            when x"ee" => byte_out <= x"28";
                            when x"ef" => byte_out <= x"df";
                            when x"f0" => byte_out <= x"8c";
                            when x"f1" => byte_out <= x"a1";
                            when x"f2" => byte_out <= x"89";
                            when x"f3" => byte_out <= x"0d";
                            when x"f4" => byte_out <= x"bf";
                            when x"f5" => byte_out <= x"e6";
                            when x"f6" => byte_out <= x"42";
                            when x"f7" => byte_out <= x"68";
                            when x"f8" => byte_out <= x"41";
                            when x"f9" => byte_out <= x"99";
                            when x"fa" => byte_out <= x"2d";
                            when x"fb" => byte_out <= x"0f";
                            when x"fc" => byte_out <= x"b0";
                            when x"fd" => byte_out <= x"54";
                            when x"fe" => byte_out <= x"bb";
                            when x"ff" => byte_out <= x"16";
                            when others => byte_out <= x"00";
		              end case;
		          end if;  
        end if;
	end process;
end Behavioral;

