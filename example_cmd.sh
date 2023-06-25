#!/bin/bash

HOSTFILE=./host_file_dir/hostip.txt

mpssh -f $HOSTFILE "echo Hello World!"
mpssh -f $HOSTFILE "echo I am from $(hostname)"
mpssh -f $HOSTFILE "echo I am in \$(hostname -I)"
