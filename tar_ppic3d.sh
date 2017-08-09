#!/bin/bash
args=("@")
tar -cvf dist0.tar moments0.out misc0.out *0.bin
tar -cvf dist1.tar moments1.out misc1.out *1.bin
tar -cvf common.tar conserved.out phi.bin
tar -cvf params.tar ppic3d.i batch.mpi ppic3d.o* params.pro timers.dat
