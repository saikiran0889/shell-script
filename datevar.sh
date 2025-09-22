#!/bin/bash

starttime=$(date +%s)
sleep 20 
endtime=$(date +%s)
totalexecutiontime=$(($endtime-$starttime))

echo "print the date=$totalexecutiontime :seconds"