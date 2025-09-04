#!sh
# xrun -gui -sv -v93 -debug -nospecify -define GATE_LEVEL -f ../src/libraries_src_list.txt -f ../src/src_list_aes_128_glv.txt -access +rw-c -INPUT ../src/simulation.tcl

# xrun -gui -f ../src/libraries_src_list.txt -f ../src/src_list_aes_128_glv.txt -sv

xrun -sv -f ../src/libraries_src_list.txt ../export/post_synth/aes_128.v ../src/tb/aes_128_tb.sv -access +rw-c -INPUT ../scripts/simulation.tcl -define GATE_LEVEL -neverwarn
