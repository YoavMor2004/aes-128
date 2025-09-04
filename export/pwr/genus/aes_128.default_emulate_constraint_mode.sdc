# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.15-s080_1 on Thu Sep 04 08:49:56 UTC 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design aes_128

create_clock -name "clk" -period 40.0 -waveform {0.0 20.0} [get_ports clk]
set_load -pin_load 0.0025 [get_ports {out_bus[127]}]
set_load -pin_load 0.0025 [get_ports {out_bus[126]}]
set_load -pin_load 0.0025 [get_ports {out_bus[125]}]
set_load -pin_load 0.0025 [get_ports {out_bus[124]}]
set_load -pin_load 0.0025 [get_ports {out_bus[123]}]
set_load -pin_load 0.0025 [get_ports {out_bus[122]}]
set_load -pin_load 0.0025 [get_ports {out_bus[121]}]
set_load -pin_load 0.0025 [get_ports {out_bus[120]}]
set_load -pin_load 0.0025 [get_ports {out_bus[119]}]
set_load -pin_load 0.0025 [get_ports {out_bus[118]}]
set_load -pin_load 0.0025 [get_ports {out_bus[117]}]
set_load -pin_load 0.0025 [get_ports {out_bus[116]}]
set_load -pin_load 0.0025 [get_ports {out_bus[115]}]
set_load -pin_load 0.0025 [get_ports {out_bus[114]}]
set_load -pin_load 0.0025 [get_ports {out_bus[113]}]
set_load -pin_load 0.0025 [get_ports {out_bus[112]}]
set_load -pin_load 0.0025 [get_ports {out_bus[111]}]
set_load -pin_load 0.0025 [get_ports {out_bus[110]}]
set_load -pin_load 0.0025 [get_ports {out_bus[109]}]
set_load -pin_load 0.0025 [get_ports {out_bus[108]}]
set_load -pin_load 0.0025 [get_ports {out_bus[107]}]
set_load -pin_load 0.0025 [get_ports {out_bus[106]}]
set_load -pin_load 0.0025 [get_ports {out_bus[105]}]
set_load -pin_load 0.0025 [get_ports {out_bus[104]}]
set_load -pin_load 0.0025 [get_ports {out_bus[103]}]
set_load -pin_load 0.0025 [get_ports {out_bus[102]}]
set_load -pin_load 0.0025 [get_ports {out_bus[101]}]
set_load -pin_load 0.0025 [get_ports {out_bus[100]}]
set_load -pin_load 0.0025 [get_ports {out_bus[99]}]
set_load -pin_load 0.0025 [get_ports {out_bus[98]}]
set_load -pin_load 0.0025 [get_ports {out_bus[97]}]
set_load -pin_load 0.0025 [get_ports {out_bus[96]}]
set_load -pin_load 0.0025 [get_ports {out_bus[95]}]
set_load -pin_load 0.0025 [get_ports {out_bus[94]}]
set_load -pin_load 0.0025 [get_ports {out_bus[93]}]
set_load -pin_load 0.0025 [get_ports {out_bus[92]}]
set_load -pin_load 0.0025 [get_ports {out_bus[91]}]
set_load -pin_load 0.0025 [get_ports {out_bus[90]}]
set_load -pin_load 0.0025 [get_ports {out_bus[89]}]
set_load -pin_load 0.0025 [get_ports {out_bus[88]}]
set_load -pin_load 0.0025 [get_ports {out_bus[87]}]
set_load -pin_load 0.0025 [get_ports {out_bus[86]}]
set_load -pin_load 0.0025 [get_ports {out_bus[85]}]
set_load -pin_load 0.0025 [get_ports {out_bus[84]}]
set_load -pin_load 0.0025 [get_ports {out_bus[83]}]
set_load -pin_load 0.0025 [get_ports {out_bus[82]}]
set_load -pin_load 0.0025 [get_ports {out_bus[81]}]
set_load -pin_load 0.0025 [get_ports {out_bus[80]}]
set_load -pin_load 0.0025 [get_ports {out_bus[79]}]
set_load -pin_load 0.0025 [get_ports {out_bus[78]}]
set_load -pin_load 0.0025 [get_ports {out_bus[77]}]
set_load -pin_load 0.0025 [get_ports {out_bus[76]}]
set_load -pin_load 0.0025 [get_ports {out_bus[75]}]
set_load -pin_load 0.0025 [get_ports {out_bus[74]}]
set_load -pin_load 0.0025 [get_ports {out_bus[73]}]
set_load -pin_load 0.0025 [get_ports {out_bus[72]}]
set_load -pin_load 0.0025 [get_ports {out_bus[71]}]
set_load -pin_load 0.0025 [get_ports {out_bus[70]}]
set_load -pin_load 0.0025 [get_ports {out_bus[69]}]
set_load -pin_load 0.0025 [get_ports {out_bus[68]}]
set_load -pin_load 0.0025 [get_ports {out_bus[67]}]
set_load -pin_load 0.0025 [get_ports {out_bus[66]}]
set_load -pin_load 0.0025 [get_ports {out_bus[65]}]
set_load -pin_load 0.0025 [get_ports {out_bus[64]}]
set_load -pin_load 0.0025 [get_ports {out_bus[63]}]
set_load -pin_load 0.0025 [get_ports {out_bus[62]}]
set_load -pin_load 0.0025 [get_ports {out_bus[61]}]
set_load -pin_load 0.0025 [get_ports {out_bus[60]}]
set_load -pin_load 0.0025 [get_ports {out_bus[59]}]
set_load -pin_load 0.0025 [get_ports {out_bus[58]}]
set_load -pin_load 0.0025 [get_ports {out_bus[57]}]
set_load -pin_load 0.0025 [get_ports {out_bus[56]}]
set_load -pin_load 0.0025 [get_ports {out_bus[55]}]
set_load -pin_load 0.0025 [get_ports {out_bus[54]}]
set_load -pin_load 0.0025 [get_ports {out_bus[53]}]
set_load -pin_load 0.0025 [get_ports {out_bus[52]}]
set_load -pin_load 0.0025 [get_ports {out_bus[51]}]
set_load -pin_load 0.0025 [get_ports {out_bus[50]}]
set_load -pin_load 0.0025 [get_ports {out_bus[49]}]
set_load -pin_load 0.0025 [get_ports {out_bus[48]}]
set_load -pin_load 0.0025 [get_ports {out_bus[47]}]
set_load -pin_load 0.0025 [get_ports {out_bus[46]}]
set_load -pin_load 0.0025 [get_ports {out_bus[45]}]
set_load -pin_load 0.0025 [get_ports {out_bus[44]}]
set_load -pin_load 0.0025 [get_ports {out_bus[43]}]
set_load -pin_load 0.0025 [get_ports {out_bus[42]}]
set_load -pin_load 0.0025 [get_ports {out_bus[41]}]
set_load -pin_load 0.0025 [get_ports {out_bus[40]}]
set_load -pin_load 0.0025 [get_ports {out_bus[39]}]
set_load -pin_load 0.0025 [get_ports {out_bus[38]}]
set_load -pin_load 0.0025 [get_ports {out_bus[37]}]
set_load -pin_load 0.0025 [get_ports {out_bus[36]}]
set_load -pin_load 0.0025 [get_ports {out_bus[35]}]
set_load -pin_load 0.0025 [get_ports {out_bus[34]}]
set_load -pin_load 0.0025 [get_ports {out_bus[33]}]
set_load -pin_load 0.0025 [get_ports {out_bus[32]}]
set_load -pin_load 0.0025 [get_ports {out_bus[31]}]
set_load -pin_load 0.0025 [get_ports {out_bus[30]}]
set_load -pin_load 0.0025 [get_ports {out_bus[29]}]
set_load -pin_load 0.0025 [get_ports {out_bus[28]}]
set_load -pin_load 0.0025 [get_ports {out_bus[27]}]
set_load -pin_load 0.0025 [get_ports {out_bus[26]}]
set_load -pin_load 0.0025 [get_ports {out_bus[25]}]
set_load -pin_load 0.0025 [get_ports {out_bus[24]}]
set_load -pin_load 0.0025 [get_ports {out_bus[23]}]
set_load -pin_load 0.0025 [get_ports {out_bus[22]}]
set_load -pin_load 0.0025 [get_ports {out_bus[21]}]
set_load -pin_load 0.0025 [get_ports {out_bus[20]}]
set_load -pin_load 0.0025 [get_ports {out_bus[19]}]
set_load -pin_load 0.0025 [get_ports {out_bus[18]}]
set_load -pin_load 0.0025 [get_ports {out_bus[17]}]
set_load -pin_load 0.0025 [get_ports {out_bus[16]}]
set_load -pin_load 0.0025 [get_ports {out_bus[15]}]
set_load -pin_load 0.0025 [get_ports {out_bus[14]}]
set_load -pin_load 0.0025 [get_ports {out_bus[13]}]
set_load -pin_load 0.0025 [get_ports {out_bus[12]}]
set_load -pin_load 0.0025 [get_ports {out_bus[11]}]
set_load -pin_load 0.0025 [get_ports {out_bus[10]}]
set_load -pin_load 0.0025 [get_ports {out_bus[9]}]
set_load -pin_load 0.0025 [get_ports {out_bus[8]}]
set_load -pin_load 0.0025 [get_ports {out_bus[7]}]
set_load -pin_load 0.0025 [get_ports {out_bus[6]}]
set_load -pin_load 0.0025 [get_ports {out_bus[5]}]
set_load -pin_load 0.0025 [get_ports {out_bus[4]}]
set_load -pin_load 0.0025 [get_ports {out_bus[3]}]
set_load -pin_load 0.0025 [get_ports {out_bus[2]}]
set_load -pin_load 0.0025 [get_ports {out_bus[1]}]
set_load -pin_load 0.0025 [get_ports {out_bus[0]}]
set_max_delay 40 -from [list \
  [get_ports clk]  \
  [get_ports rst_n]  \
  [get_ports {in_bus[127]}]  \
  [get_ports {in_bus[126]}]  \
  [get_ports {in_bus[125]}]  \
  [get_ports {in_bus[124]}]  \
  [get_ports {in_bus[123]}]  \
  [get_ports {in_bus[122]}]  \
  [get_ports {in_bus[121]}]  \
  [get_ports {in_bus[120]}]  \
  [get_ports {in_bus[119]}]  \
  [get_ports {in_bus[118]}]  \
  [get_ports {in_bus[117]}]  \
  [get_ports {in_bus[116]}]  \
  [get_ports {in_bus[115]}]  \
  [get_ports {in_bus[114]}]  \
  [get_ports {in_bus[113]}]  \
  [get_ports {in_bus[112]}]  \
  [get_ports {in_bus[111]}]  \
  [get_ports {in_bus[110]}]  \
  [get_ports {in_bus[109]}]  \
  [get_ports {in_bus[108]}]  \
  [get_ports {in_bus[107]}]  \
  [get_ports {in_bus[106]}]  \
  [get_ports {in_bus[105]}]  \
  [get_ports {in_bus[104]}]  \
  [get_ports {in_bus[103]}]  \
  [get_ports {in_bus[102]}]  \
  [get_ports {in_bus[101]}]  \
  [get_ports {in_bus[100]}]  \
  [get_ports {in_bus[99]}]  \
  [get_ports {in_bus[98]}]  \
  [get_ports {in_bus[97]}]  \
  [get_ports {in_bus[96]}]  \
  [get_ports {in_bus[95]}]  \
  [get_ports {in_bus[94]}]  \
  [get_ports {in_bus[93]}]  \
  [get_ports {in_bus[92]}]  \
  [get_ports {in_bus[91]}]  \
  [get_ports {in_bus[90]}]  \
  [get_ports {in_bus[89]}]  \
  [get_ports {in_bus[88]}]  \
  [get_ports {in_bus[87]}]  \
  [get_ports {in_bus[86]}]  \
  [get_ports {in_bus[85]}]  \
  [get_ports {in_bus[84]}]  \
  [get_ports {in_bus[83]}]  \
  [get_ports {in_bus[82]}]  \
  [get_ports {in_bus[81]}]  \
  [get_ports {in_bus[80]}]  \
  [get_ports {in_bus[79]}]  \
  [get_ports {in_bus[78]}]  \
  [get_ports {in_bus[77]}]  \
  [get_ports {in_bus[76]}]  \
  [get_ports {in_bus[75]}]  \
  [get_ports {in_bus[74]}]  \
  [get_ports {in_bus[73]}]  \
  [get_ports {in_bus[72]}]  \
  [get_ports {in_bus[71]}]  \
  [get_ports {in_bus[70]}]  \
  [get_ports {in_bus[69]}]  \
  [get_ports {in_bus[68]}]  \
  [get_ports {in_bus[67]}]  \
  [get_ports {in_bus[66]}]  \
  [get_ports {in_bus[65]}]  \
  [get_ports {in_bus[64]}]  \
  [get_ports {in_bus[63]}]  \
  [get_ports {in_bus[62]}]  \
  [get_ports {in_bus[61]}]  \
  [get_ports {in_bus[60]}]  \
  [get_ports {in_bus[59]}]  \
  [get_ports {in_bus[58]}]  \
  [get_ports {in_bus[57]}]  \
  [get_ports {in_bus[56]}]  \
  [get_ports {in_bus[55]}]  \
  [get_ports {in_bus[54]}]  \
  [get_ports {in_bus[53]}]  \
  [get_ports {in_bus[52]}]  \
  [get_ports {in_bus[51]}]  \
  [get_ports {in_bus[50]}]  \
  [get_ports {in_bus[49]}]  \
  [get_ports {in_bus[48]}]  \
  [get_ports {in_bus[47]}]  \
  [get_ports {in_bus[46]}]  \
  [get_ports {in_bus[45]}]  \
  [get_ports {in_bus[44]}]  \
  [get_ports {in_bus[43]}]  \
  [get_ports {in_bus[42]}]  \
  [get_ports {in_bus[41]}]  \
  [get_ports {in_bus[40]}]  \
  [get_ports {in_bus[39]}]  \
  [get_ports {in_bus[38]}]  \
  [get_ports {in_bus[37]}]  \
  [get_ports {in_bus[36]}]  \
  [get_ports {in_bus[35]}]  \
  [get_ports {in_bus[34]}]  \
  [get_ports {in_bus[33]}]  \
  [get_ports {in_bus[32]}]  \
  [get_ports {in_bus[31]}]  \
  [get_ports {in_bus[30]}]  \
  [get_ports {in_bus[29]}]  \
  [get_ports {in_bus[28]}]  \
  [get_ports {in_bus[27]}]  \
  [get_ports {in_bus[26]}]  \
  [get_ports {in_bus[25]}]  \
  [get_ports {in_bus[24]}]  \
  [get_ports {in_bus[23]}]  \
  [get_ports {in_bus[22]}]  \
  [get_ports {in_bus[21]}]  \
  [get_ports {in_bus[20]}]  \
  [get_ports {in_bus[19]}]  \
  [get_ports {in_bus[18]}]  \
  [get_ports {in_bus[17]}]  \
  [get_ports {in_bus[16]}]  \
  [get_ports {in_bus[15]}]  \
  [get_ports {in_bus[14]}]  \
  [get_ports {in_bus[13]}]  \
  [get_ports {in_bus[12]}]  \
  [get_ports {in_bus[11]}]  \
  [get_ports {in_bus[10]}]  \
  [get_ports {in_bus[9]}]  \
  [get_ports {in_bus[8]}]  \
  [get_ports {in_bus[7]}]  \
  [get_ports {in_bus[6]}]  \
  [get_ports {in_bus[5]}]  \
  [get_ports {in_bus[4]}]  \
  [get_ports {in_bus[3]}]  \
  [get_ports {in_bus[2]}]  \
  [get_ports {in_bus[1]}]  \
  [get_ports {in_bus[0]}]  \
  [get_ports {key[127]}]  \
  [get_ports {key[126]}]  \
  [get_ports {key[125]}]  \
  [get_ports {key[124]}]  \
  [get_ports {key[123]}]  \
  [get_ports {key[122]}]  \
  [get_ports {key[121]}]  \
  [get_ports {key[120]}]  \
  [get_ports {key[119]}]  \
  [get_ports {key[118]}]  \
  [get_ports {key[117]}]  \
  [get_ports {key[116]}]  \
  [get_ports {key[115]}]  \
  [get_ports {key[114]}]  \
  [get_ports {key[113]}]  \
  [get_ports {key[112]}]  \
  [get_ports {key[111]}]  \
  [get_ports {key[110]}]  \
  [get_ports {key[109]}]  \
  [get_ports {key[108]}]  \
  [get_ports {key[107]}]  \
  [get_ports {key[106]}]  \
  [get_ports {key[105]}]  \
  [get_ports {key[104]}]  \
  [get_ports {key[103]}]  \
  [get_ports {key[102]}]  \
  [get_ports {key[101]}]  \
  [get_ports {key[100]}]  \
  [get_ports {key[99]}]  \
  [get_ports {key[98]}]  \
  [get_ports {key[97]}]  \
  [get_ports {key[96]}]  \
  [get_ports {key[95]}]  \
  [get_ports {key[94]}]  \
  [get_ports {key[93]}]  \
  [get_ports {key[92]}]  \
  [get_ports {key[91]}]  \
  [get_ports {key[90]}]  \
  [get_ports {key[89]}]  \
  [get_ports {key[88]}]  \
  [get_ports {key[87]}]  \
  [get_ports {key[86]}]  \
  [get_ports {key[85]}]  \
  [get_ports {key[84]}]  \
  [get_ports {key[83]}]  \
  [get_ports {key[82]}]  \
  [get_ports {key[81]}]  \
  [get_ports {key[80]}]  \
  [get_ports {key[79]}]  \
  [get_ports {key[78]}]  \
  [get_ports {key[77]}]  \
  [get_ports {key[76]}]  \
  [get_ports {key[75]}]  \
  [get_ports {key[74]}]  \
  [get_ports {key[73]}]  \
  [get_ports {key[72]}]  \
  [get_ports {key[71]}]  \
  [get_ports {key[70]}]  \
  [get_ports {key[69]}]  \
  [get_ports {key[68]}]  \
  [get_ports {key[67]}]  \
  [get_ports {key[66]}]  \
  [get_ports {key[65]}]  \
  [get_ports {key[64]}]  \
  [get_ports {key[63]}]  \
  [get_ports {key[62]}]  \
  [get_ports {key[61]}]  \
  [get_ports {key[60]}]  \
  [get_ports {key[59]}]  \
  [get_ports {key[58]}]  \
  [get_ports {key[57]}]  \
  [get_ports {key[56]}]  \
  [get_ports {key[55]}]  \
  [get_ports {key[54]}]  \
  [get_ports {key[53]}]  \
  [get_ports {key[52]}]  \
  [get_ports {key[51]}]  \
  [get_ports {key[50]}]  \
  [get_ports {key[49]}]  \
  [get_ports {key[48]}]  \
  [get_ports {key[47]}]  \
  [get_ports {key[46]}]  \
  [get_ports {key[45]}]  \
  [get_ports {key[44]}]  \
  [get_ports {key[43]}]  \
  [get_ports {key[42]}]  \
  [get_ports {key[41]}]  \
  [get_ports {key[40]}]  \
  [get_ports {key[39]}]  \
  [get_ports {key[38]}]  \
  [get_ports {key[37]}]  \
  [get_ports {key[36]}]  \
  [get_ports {key[35]}]  \
  [get_ports {key[34]}]  \
  [get_ports {key[33]}]  \
  [get_ports {key[32]}]  \
  [get_ports {key[31]}]  \
  [get_ports {key[30]}]  \
  [get_ports {key[29]}]  \
  [get_ports {key[28]}]  \
  [get_ports {key[27]}]  \
  [get_ports {key[26]}]  \
  [get_ports {key[25]}]  \
  [get_ports {key[24]}]  \
  [get_ports {key[23]}]  \
  [get_ports {key[22]}]  \
  [get_ports {key[21]}]  \
  [get_ports {key[20]}]  \
  [get_ports {key[19]}]  \
  [get_ports {key[18]}]  \
  [get_ports {key[17]}]  \
  [get_ports {key[16]}]  \
  [get_ports {key[15]}]  \
  [get_ports {key[14]}]  \
  [get_ports {key[13]}]  \
  [get_ports {key[12]}]  \
  [get_ports {key[11]}]  \
  [get_ports {key[10]}]  \
  [get_ports {key[9]}]  \
  [get_ports {key[8]}]  \
  [get_ports {key[7]}]  \
  [get_ports {key[6]}]  \
  [get_ports {key[5]}]  \
  [get_ports {key[4]}]  \
  [get_ports {key[3]}]  \
  [get_ports {key[2]}]  \
  [get_ports {key[1]}]  \
  [get_ports {key[0]}] ] -to [list \
  [get_ports {out_bus[127]}]  \
  [get_ports {out_bus[126]}]  \
  [get_ports {out_bus[125]}]  \
  [get_ports {out_bus[124]}]  \
  [get_ports {out_bus[123]}]  \
  [get_ports {out_bus[122]}]  \
  [get_ports {out_bus[121]}]  \
  [get_ports {out_bus[120]}]  \
  [get_ports {out_bus[119]}]  \
  [get_ports {out_bus[118]}]  \
  [get_ports {out_bus[117]}]  \
  [get_ports {out_bus[116]}]  \
  [get_ports {out_bus[115]}]  \
  [get_ports {out_bus[114]}]  \
  [get_ports {out_bus[113]}]  \
  [get_ports {out_bus[112]}]  \
  [get_ports {out_bus[111]}]  \
  [get_ports {out_bus[110]}]  \
  [get_ports {out_bus[109]}]  \
  [get_ports {out_bus[108]}]  \
  [get_ports {out_bus[107]}]  \
  [get_ports {out_bus[106]}]  \
  [get_ports {out_bus[105]}]  \
  [get_ports {out_bus[104]}]  \
  [get_ports {out_bus[103]}]  \
  [get_ports {out_bus[102]}]  \
  [get_ports {out_bus[101]}]  \
  [get_ports {out_bus[100]}]  \
  [get_ports {out_bus[99]}]  \
  [get_ports {out_bus[98]}]  \
  [get_ports {out_bus[97]}]  \
  [get_ports {out_bus[96]}]  \
  [get_ports {out_bus[95]}]  \
  [get_ports {out_bus[94]}]  \
  [get_ports {out_bus[93]}]  \
  [get_ports {out_bus[92]}]  \
  [get_ports {out_bus[91]}]  \
  [get_ports {out_bus[90]}]  \
  [get_ports {out_bus[89]}]  \
  [get_ports {out_bus[88]}]  \
  [get_ports {out_bus[87]}]  \
  [get_ports {out_bus[86]}]  \
  [get_ports {out_bus[85]}]  \
  [get_ports {out_bus[84]}]  \
  [get_ports {out_bus[83]}]  \
  [get_ports {out_bus[82]}]  \
  [get_ports {out_bus[81]}]  \
  [get_ports {out_bus[80]}]  \
  [get_ports {out_bus[79]}]  \
  [get_ports {out_bus[78]}]  \
  [get_ports {out_bus[77]}]  \
  [get_ports {out_bus[76]}]  \
  [get_ports {out_bus[75]}]  \
  [get_ports {out_bus[74]}]  \
  [get_ports {out_bus[73]}]  \
  [get_ports {out_bus[72]}]  \
  [get_ports {out_bus[71]}]  \
  [get_ports {out_bus[70]}]  \
  [get_ports {out_bus[69]}]  \
  [get_ports {out_bus[68]}]  \
  [get_ports {out_bus[67]}]  \
  [get_ports {out_bus[66]}]  \
  [get_ports {out_bus[65]}]  \
  [get_ports {out_bus[64]}]  \
  [get_ports {out_bus[63]}]  \
  [get_ports {out_bus[62]}]  \
  [get_ports {out_bus[61]}]  \
  [get_ports {out_bus[60]}]  \
  [get_ports {out_bus[59]}]  \
  [get_ports {out_bus[58]}]  \
  [get_ports {out_bus[57]}]  \
  [get_ports {out_bus[56]}]  \
  [get_ports {out_bus[55]}]  \
  [get_ports {out_bus[54]}]  \
  [get_ports {out_bus[53]}]  \
  [get_ports {out_bus[52]}]  \
  [get_ports {out_bus[51]}]  \
  [get_ports {out_bus[50]}]  \
  [get_ports {out_bus[49]}]  \
  [get_ports {out_bus[48]}]  \
  [get_ports {out_bus[47]}]  \
  [get_ports {out_bus[46]}]  \
  [get_ports {out_bus[45]}]  \
  [get_ports {out_bus[44]}]  \
  [get_ports {out_bus[43]}]  \
  [get_ports {out_bus[42]}]  \
  [get_ports {out_bus[41]}]  \
  [get_ports {out_bus[40]}]  \
  [get_ports {out_bus[39]}]  \
  [get_ports {out_bus[38]}]  \
  [get_ports {out_bus[37]}]  \
  [get_ports {out_bus[36]}]  \
  [get_ports {out_bus[35]}]  \
  [get_ports {out_bus[34]}]  \
  [get_ports {out_bus[33]}]  \
  [get_ports {out_bus[32]}]  \
  [get_ports {out_bus[31]}]  \
  [get_ports {out_bus[30]}]  \
  [get_ports {out_bus[29]}]  \
  [get_ports {out_bus[28]}]  \
  [get_ports {out_bus[27]}]  \
  [get_ports {out_bus[26]}]  \
  [get_ports {out_bus[25]}]  \
  [get_ports {out_bus[24]}]  \
  [get_ports {out_bus[23]}]  \
  [get_ports {out_bus[22]}]  \
  [get_ports {out_bus[21]}]  \
  [get_ports {out_bus[20]}]  \
  [get_ports {out_bus[19]}]  \
  [get_ports {out_bus[18]}]  \
  [get_ports {out_bus[17]}]  \
  [get_ports {out_bus[16]}]  \
  [get_ports {out_bus[15]}]  \
  [get_ports {out_bus[14]}]  \
  [get_ports {out_bus[13]}]  \
  [get_ports {out_bus[12]}]  \
  [get_ports {out_bus[11]}]  \
  [get_ports {out_bus[10]}]  \
  [get_ports {out_bus[9]}]  \
  [get_ports {out_bus[8]}]  \
  [get_ports {out_bus[7]}]  \
  [get_ports {out_bus[6]}]  \
  [get_ports {out_bus[5]}]  \
  [get_ports {out_bus[4]}]  \
  [get_ports {out_bus[3]}]  \
  [get_ports {out_bus[2]}]  \
  [get_ports {out_bus[1]}]  \
  [get_ports {out_bus[0]}] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports rst_n]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[127]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[126]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[125]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[124]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[123]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[122]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[121]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[120]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[119]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[118]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[117]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[116]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[115]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[114]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[113]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[112]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[111]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[110]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[109]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[108]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[107]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[106]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[105]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[104]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[103]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[102]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[101]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[100]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[99]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[98]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[97]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[96]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[95]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[94]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[93]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[92]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[91]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[90]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[89]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[88]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[87]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[86]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[85]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[84]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[83]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[82]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[81]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[80]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[79]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[78]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[77]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[76]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[75]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[74]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[73]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[72]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[71]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[70]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[69]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[68]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[67]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[66]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[65]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[64]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[63]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[62]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[61]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[60]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[59]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[58]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[57]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[56]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[55]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[54]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[53]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[52]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[51]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[50]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[49]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[48]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[47]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[46]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[45]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[44]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[43]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[42]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[41]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[40]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[39]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[38]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[37]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[36]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[35]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[34]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[33]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[32]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[31]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[30]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[29]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[28]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[27]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[26]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[25]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[24]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[23]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[22]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[21]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[20]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[19]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[18]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[17]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[16]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {in_bus[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[127]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[126]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[125]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[124]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[123]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[122]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[121]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[120]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[119]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[118]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[117]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[116]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[115]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[114]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[113]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[112]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[111]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[110]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[109]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[108]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[107]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[106]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[105]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[104]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[103]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[102]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[101]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[100]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[99]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[98]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[97]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[96]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[95]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[94]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[93]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[92]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[91]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[90]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[89]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[88]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[87]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[86]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[85]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[84]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[83]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[82]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[81]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[80]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[79]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[78]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[77]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[76]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[75]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[74]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[73]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[72]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[71]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[70]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[69]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[68]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[67]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[66]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[65]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[64]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[63]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[62]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[61]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[60]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[59]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[58]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[57]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[56]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[55]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[54]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[53]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[52]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[51]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[50]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[49]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[48]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[47]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[46]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[45]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[44]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[43]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[42]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[41]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[40]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[39]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[38]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[37]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[36]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[35]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[34]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[33]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[32]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[31]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[30]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[29]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[28]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[27]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[26]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[25]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[24]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[23]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[22]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[21]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[20]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[19]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[18]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[17]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[16]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {key[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[127]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[126]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[125]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[124]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[123]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[122]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[121]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[120]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[119]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[118]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[117]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[116]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[115]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[114]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[113]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[112]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[111]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[110]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[109]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[108]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[107]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[106]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[105]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[104]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[103]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[102]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[101]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[100]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[99]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[98]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[97]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[96]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[95]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[94]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[93]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[92]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[91]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[90]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[89]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[88]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[87]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[86]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[85]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[84]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[83]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[82]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[81]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[80]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[79]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[78]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[77]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[76]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[75]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[74]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[73]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[72]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[71]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[70]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[69]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[68]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[67]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[66]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[65]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[64]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[63]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[62]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[61]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[60]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[59]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[58]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[57]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[56]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[55]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[54]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[53]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[52]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[51]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[50]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[49]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[48]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[47]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[46]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[45]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[44]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[43]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[42]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[41]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[40]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[39]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[38]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[37]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[36]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[35]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[34]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[33]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[32]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[31]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[30]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[29]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[28]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[27]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[26]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[25]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[24]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[23]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[22]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[21]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[20]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[19]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[18]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[17]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[16]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[15]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[14]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[13]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[12]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[11]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[10]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[9]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[8]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 10.0 [get_ports {out_bus[0]}]
set_max_fanout 16.000 [current_design]
set_max_transition 0.35 [current_design]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports clk]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports rst_n]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[127]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[126]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[125]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[124]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[123]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[122]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[121]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[120]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[119]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[118]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[117]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[116]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[115]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[114]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[113]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[112]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[111]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[110]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[109]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[108]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[107]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[106]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[105]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[104]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[103]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[102]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[101]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[100]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[99]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[98]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[97]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[96]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[95]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[94]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[93]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[92]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[91]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[90]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[89]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[88]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[87]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[86]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[85]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[84]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[83]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[82]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[81]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[80]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[79]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[78]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[77]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[76]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[75]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[74]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[73]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[72]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[71]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[70]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[69]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[68]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[67]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[66]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[65]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[64]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[63]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[62]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[61]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[60]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[59]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[58]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[57]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[56]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[55]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[54]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[53]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[52]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[51]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[50]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[49]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[48]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[47]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[46]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[45]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[44]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[43]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[42]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[41]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[40]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[39]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[38]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[37]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[36]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[35]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[34]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[33]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[32]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[31]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[30]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[29]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[28]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[27]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[26]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[25]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[24]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[23]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[22]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[21]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[20]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[19]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[18]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[17]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[16]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[15]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[14]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[13]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[12]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[11]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[10]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[9]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[8]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[7]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[6]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[5]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[4]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[3]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[2]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[1]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {in_bus[0]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[127]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[126]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[125]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[124]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[123]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[122]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[121]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[120]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[119]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[118]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[117]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[116]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[115]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[114]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[113]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[112]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[111]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[110]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[109]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[108]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[107]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[106]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[105]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[104]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[103]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[102]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[101]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[100]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[99]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[98]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[97]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[96]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[95]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[94]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[93]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[92]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[91]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[90]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[89]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[88]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[87]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[86]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[85]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[84]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[83]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[82]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[81]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[80]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[79]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[78]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[77]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[76]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[75]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[74]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[73]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[72]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[71]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[70]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[69]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[68]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[67]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[66]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[65]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[64]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[63]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[62]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[61]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[60]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[59]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[58]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[57]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[56]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[55]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[54]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[53]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[52]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[51]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[50]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[49]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[48]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[47]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[46]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[45]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[44]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[43]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[42]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[41]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[40]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[39]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[38]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[37]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[36]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[35]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[34]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[33]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[32]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[31]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[30]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[29]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[28]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[27]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[26]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[25]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[24]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[23]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[22]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[21]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[20]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[19]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[18]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[17]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[16]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[15]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[14]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[13]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[12]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[11]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[10]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[9]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[8]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[7]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[6]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[5]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[4]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[3]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[2]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[1]}]
set_driving_cell -lib_cell BUF_X6M_A9TR -library sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c -pin "Y" [get_ports {key[0]}]
set_ideal_network [get_ports clk]
set_ideal_network [get_ports rst_n]
set_clock_uncertainty -setup 0.125 [get_clocks clk]
set_clock_uncertainty -hold 0.125 [get_clocks clk]
