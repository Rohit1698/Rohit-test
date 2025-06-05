#!/bin/bash


<<comment

This script outputs the node health

Author: Rohit
date: 04/06/2025
version: v1
comment

set -x   #debug mode (it will show the command that we are executing and also shows the output and it is a good practice)

set -e  #exit the script whene there is an error

set -o  pipefail


df -h


free -g


nproc

