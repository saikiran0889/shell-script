#!/bin/bash

count=5

while [ $count -ge 0 ]
do 
echo "time lest $count"
sleep 2
count=$((count-1))

done 

echo "done!"