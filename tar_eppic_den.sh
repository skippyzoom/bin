#!/bin/bash
nFiles=`find . -name 'domain*' | wc -l`
# tar -cvf den0.tar domain000/den0.bin
tar -cvf den1.tar domain000/den1.bin
for (( i=1; i<nFiles; i++ ))
do
    j=$(printf "%03d" "$i")
    # tar -rvf den0.tar domain$j/den0.bin
    tar -rvf den1.tar domain$j/den1.bin
done