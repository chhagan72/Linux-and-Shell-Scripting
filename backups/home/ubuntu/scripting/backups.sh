#!/bin/bash
  
src_dir=/home/ubuntu/scripting
tgt_dir=/home/ubuntu/backups

curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")

backupfile=$tgt_dir/$curr_timestamp.tgz

echo "Taking backup on $curr_timestamp"

#echo "$backupfile"

tar czf $backupfile $src_dir

echo "Backup completed"

