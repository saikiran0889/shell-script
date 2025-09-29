#!/bin/bash

source_dir=/home/ec2-user/app-logs

if [ ! -d $source_dir ]; then

echo "source file doesn't exist: $source_dir"
exit 1
fi






while IFS= read -r file;
do
echo "printing: $file"
done <<< set.sh