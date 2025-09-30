#!/bin/bash

disk_usage=$(df -hT | grep -v Filesystem)

while IFS= read -r line
do

usage = echo $line | awk '{print $6}'

done <<< $disk_usage