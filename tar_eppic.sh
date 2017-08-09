#!/bin/bash
args=("@")
nFiles=`find . -name 'domain*' | wc -l`
fileNums=`expr $nFiles - 1`
#tar -cvf dist0.tar domain000/moments0.out domain000/misc0.out domain000/*0.bin
tar -cvf dist1.tar domain000/moments1.out domain000/misc1.out domain000/*1.bin
tar -cvf common.tar domain000/conserved.out domain000/phi.bin
tar -cvf params.tar eppic.i ppic3d.i batch.mpi eppic.o* params.pro domain000/timers.dat
for (( i=1; i<nFiles; i++ ))
do 
    j=$(printf "%03d" "$i")
#    tar -rvf dist0.tar domain$j/*0.bin
    tar -rvf dist1.tar domain$j/*1.bin
    tar -rvf common.tar domain$j/conserved.out domain$j/phi.bin
done