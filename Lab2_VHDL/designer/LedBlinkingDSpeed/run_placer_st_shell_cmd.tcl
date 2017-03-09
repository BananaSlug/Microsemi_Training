read_sdc -scenario "place_and_route" -netlist "user" -pin_separator "/" -ignore_errors {C:/Users/ashj/Documents/LEARNING/Microsemi/Lab2_VHDL/designer/LedBlinkingDSpeed/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\designer\LedBlinkingDSpeed\LedBlinkingDSpeed_layout_combinational_loops.xml}
report -type slack {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\designer\LedBlinkingDSpeed\pinslacks.txt}
