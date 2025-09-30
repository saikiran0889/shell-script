#!/bin/bash

disk_usage=$(df -hT | grep -v Filesystem)
disk_treshold=2
ipaddress=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)
message=""
while IFS= read -r line
do

usage=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
partition=$(echo $line | awk '{print $6}')
if [ $usage -ge $disk_treshold ]; then
message+="high disk usage $partition: $usage %"
fi
done <<< $disk_usage

echo "message body: $message"