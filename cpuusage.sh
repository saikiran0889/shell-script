#!/bin/bash

disk_usage=$(df -hT | grep -v Filesystem)
disk_treshold=2
while IFS= read -r line
do

usage=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
partition=$(echo $line | awk '{print $6}')
if [ $usage -ge $disk_treshold ]; then
echo "high usage $partiton: $usage"
fi
done <<< $disk_usage