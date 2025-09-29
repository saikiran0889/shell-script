#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
logsfolder="/var/log/shell-script.txt"
scriptname=$( echo $0 | cut "." -f1 )
logfile="$logsfolder/$scriptname.log"

mkdir -p $logsfolder

echo "script started executed : $(date)"


source_dir=/home/ec2-user/app-logs

if [ ! -d $source_dir ]; then
echo "$source_dir doesn't exist"
fi


delete_files=$(find $source_dir -name "*.log" -mtime +14)