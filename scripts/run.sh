# xrun -debug -nospecify -timescale 1ns/1ps -gui -access +rw-c -f ../src/src_list_aes_128.txt -sv -INPUT ../scripts/simulation.tcl -neverwarn

xrun -gui -sv -f ../src/src_list_aes_128.txt -access +rw-c -INPUT ../scripts/simulation.tcl
