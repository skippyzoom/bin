#!/bin/bash
## Back up data and parameters from an EPPIC parallel HDF run.
## The user must run this script within the directory that contains
## the simulation data.

## Declare the backup directory for all projects.
BACKUP=$STOCKYARD

## Make new project and run subdirectories if they do not exist
## This calls ~/set_target, which creates the target from the
## UNIX pwd command.
mkdir $BACKUP/$(set_target.sh)

## Collect the data and parameters in a tar ball.
tar_eppic_ph5.sh

## Copy the tar ball to the backup directory.
cp -pv eppic.tar $BACKUP/$(set_target.sh)
