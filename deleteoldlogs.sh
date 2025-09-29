#!/bin/bash

source_dir=/home/ec2-user/app-logs

if [ ! -d $source_dir ]; then

echo "source file doesn't exist: $source_dir"
exit 1
fi


filesdeleted=$(find $source_dir -name "*.log" -mtime +14 )



while IFS= read -r file;
do
echo "dleteing log: $file"
rm -rf $file
echo "deleted the file: $file"
done <<< $filesdeleted