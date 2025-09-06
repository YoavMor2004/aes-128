#!/bin/bash
xrun $1 -sv -f ../scripts/libraries_src_list.f ../export/post_synth/aes_128.v ../src/tb/multicycle/aes_128_tb.sv -access +rw-c -INPUT ../scripts/simulation.tcl -define GATE_LEVEL -neverwarn
