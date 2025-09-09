#!/bin/bash
xrun $1 -sv -f ../src/sim_fine_multicycle_aes_128.f -access +rw-c -INPUT ../scripts/simulation.tcl -neverwarn
