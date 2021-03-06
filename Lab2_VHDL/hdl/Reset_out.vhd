--------------------------------------------------------------------------------------------------------
-- Company: Future Electronics Inc.
--
-- File: Reset_out.vhd
-- File history:
--      Rev. 1: 8/23/2016
--
-- Description: 
--
-- Reset Outputs
--
-- Targeted device: <Family::IGLOO2> <Die::M2GL025> <Package::256 VF>
-- Author: Giovanna Franco
--
--------------------------------------------------------------------------------------------------------
-- Copyright (c) 2016   Future Electronics
--                      All rights reserved.
--------------------------------------------------------------------------------------------------------
-- Disclaimer of Warranty
-- ALL MATERIALS, INFORMATION AND SERVICES ARE PROVIDED ?AS-IS? AND ?AS-AVAILABLE? FOR YOUR USE. 
-- FUTURE ELECTRONICS DISCLAIMS ALL WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING 
-- BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
-- PURPOSE, TITLE, OR NON-INFRINGEMENT.
-- YOU ACKNOWLEDGE AND AGREE THAT THE REFERENCE DESIGNS AND OTHER SUCH DESIGN MATERIALS INCLUDED 
-- HEREIN ARE PROVIDED AS AN EXAMPLE ONLY AND THAT YOU WILL EXERCISE YOUR OWN INDEPENDENT ANALYSIS 
-- AND JUDGEMENT IN YOUR USE OF THESE MATERIALS. FUTURE ELECTRONICS ASSUMES NO LIABILITY FOR YOUR 
-- USE OF THESE MATERIALS FOR YOUR PRODUCT DESIGNS.
-- 
-- Indemnification
-- You agree to indemnify, defend and hold Future Electronics and all of its agents, directors, 
-- employees, information providers, licensors and licensees, and affiliated companies 
-- (collectively, ?Indemnified Parties?), harmless from and against any and all liability 
-- and costs (including, without limitation, attorneys? fees and costs), incurred by the 
-- Indemnified Parties in connection with any claim arising out of any breach by You of these 
-- Terms and Conditions of Use or any representations or warranties made by You herein. 
-- You will cooperate as fully as reasonably required in Future Electronics? defense of any claim. 
-- Future Electronics reserves the right, at its own expense, to assume the exclusive defense and 
-- control of any matter otherwise subject to indemnification by You and You shall not in any event 
-- settle any matter without the written consent of Future Electronics.
-- 
-- Limitation of Liability
-- UNDER NO CIRCUMSTANCES SHALL FUTURE ELECTRONICS, NOR ITS AGENTS, DIRECTORS, EMPLOYEES, 
-- INFORMATION PROVIDERS, LICENSORS AND LICENSEE, AND AFFILIATED COMPANIES BE LIABLE FOR ANY DAMAGES, 
-- INCLUDING WITHOUT LIMITATION, DIRECT, INDIRECT, INCIDENTAL, SPECIAL, PUNITIVE, CONSEQUENTIAL, OR 
-- OTHER DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS, LOST REVENUES, OR SIMILAR ECONOMIC LOSS), 
-- WHETHER IN CONTRACT, TORT, OR OTHERWISE, ARISING OUT OF THE USE OR INABILITY TO USE THE MATERIALS 
-- PROVIDED AS A REFERENCE DESIGN, EVEN IF WE ARE ADVISED OF THE POSSIBILITY THEREOF, NOR FOR ANY CLAIM 
-- BY A THIRD PARTY.
--------------------------------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity Reset_out is
port (
    -- Inputs
    clk : in std_logic;
    SW1 : in std_logic;
    SW2 : in std_logic;
    -- Output
    reset : out std_logic
);
end Reset_out;
architecture architecture_Reset_out of Reset_out is

begin

   -- architecture body
     clear : process(clk,SW1,SW2)
     begin
     if rising_edge(clk) then
        if SW1 = '1' and SW2 = '1' then
            reset <= '0';
        else
            reset <= '1';
        end if;
    end if;
    end process;
end architecture_Reset_out;
