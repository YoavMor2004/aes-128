#!sh
xrun -gui -sv -v93 -debug -nospecify -define GATE_LEVEL -f ../src/libraries_src_list.txt -f ../src/src_list_aes_128_glv -access +rw-c -INPUT ../src/simulation.tcl
