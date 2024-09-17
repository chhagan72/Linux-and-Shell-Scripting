#!/bin/bash

alert=30
backuop_date=$(date +'%m/%d/%y %H:%M:S')
df -H | awk ' {print $5 " " $1}' | while read output;
do
#echo " Disk details: $output"

#This is a cut command
usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
file_system=$(echo $output | awk '{print $2}')
#echo $usage
if [ $usage -ge $alert ]
then
    echo "CRITICAL for $file_system on $backup_date"
fi
done


