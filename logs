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


if [ $USERID -ne 0 ]; then
echo -e "$R ERROR: You are not in root access $Y"
exit 1
fi

mkdir -p $logsfolder