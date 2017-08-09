#!/bin/bash
tar -cvf eppic.tar batch.mpi eppic.i eppic.o* ppic3d.i params.pro domain000/timers.dat domain000/moments*.out
tar -rvf eppic.tar parallel/*.h5
