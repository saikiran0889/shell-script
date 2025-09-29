#!/bin/bash

# count=5

# while [ $count -ge 0 ]
# do 
# echo "time lest $count"
# sleep 2
# count=$((count-1))

# done 

# echo "done!"


while IFS = read -r line;
do
echo "printing: $LINE"
done < text.sh