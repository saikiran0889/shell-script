#!/bin/bash

starttime=$(date +%s)
sleep 20 &
endtime=$(date +%s)
totalexecutiontime=$($starttime-$endtime)

echo "print the date=$totalexectiontime :seconds"