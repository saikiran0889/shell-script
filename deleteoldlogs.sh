#!/bin/bash

# source_dir=/var/log/app-log 

# if [ ! -d $source_dir ]; then

# echo "source file doesn't exist: $source_dir"
# exit 1
# fi






while IFS= read -r file;
do
echo "printing: $file"
done <<< set.sh