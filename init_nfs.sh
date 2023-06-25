#!/bin/bash

HOSTNAME="$(hostname -I)"
HOSTNAME=$(echo "$HOSTNAME" | sed -e 's/[[:space:]]*$//')
HOSTFILE=./host_file_dir/nfs_clientip.txt

NFS_DIR=/home/cc/nfs_common

mpssh -f $HOSTFILE "sudo yum update -y"
mpssh -f $HOSTFILE "sudo yum install vim -y"
mpssh -f $HOSTFILE "sudo yum install nfs-utils"
mpssh -f $HOSTFILE "mkdir ${NFS_DIR}"

mpssh -f $HOSTFILE "sudo mount -t nfs ${HOSTNAME}:${NFS_DIR} ${NFS_DIR}"

mpssh -f $HOSTFILE "df -Th"
