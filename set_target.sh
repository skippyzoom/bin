#!/bin/bash
## Set the target directory into which the user or another script will copy data.
## This script was designed for backing up EPPIC simulation data and parameters. 
## It expects to be in the simulation run directory.

len=${#SCRATCH}
pos=$((len + 1))
WD=`pwd`
TARGET=${WD:pos}
echo $TARGET
