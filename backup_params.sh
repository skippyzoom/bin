#!/bin/bash
## Back up files that contain simulation paramters and run-time info.
## The user must run this script within the directory that contains
## the simulation data.

## Declare the backup directory for all projects.
BACKUP=~/projects

## Make new project and run subdirectories if they do not exist
## This calls ~/set_target, which creates the target from the
## UNIX pwd command.
mkdir -p $BACKUP/$(set_target.sh)

## Collect the parameters in a tar ball.
tar_eppic_params.sh

## Copy the tar ball to the backup directory.
cp -pv params.tar $BACKUP/$(set_target.sh)
