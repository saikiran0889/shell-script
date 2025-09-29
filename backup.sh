#!/bin/bash

# USERID=$(id -u)
# R="\e[31m"
# G="\e[32m"
# Y="\e[33m"
# N="\e[0m"
# # ****** Creating log files ********
# logsfolder="/var/log/shell-script"
# scriptname=$( echo $0 | cut -d "." -f1 )
# logfile="$logsfolder/$scriptname.log"

# mkdir -p $logsfolder

# echo "script started executed : $(date)" | tee -a $logfile

# #********* SUDO access **********

# if [ $USERID -ne 0 ]; then
# echo -e "$R ERROR: You are not in root access $Y"
# exit 1
# fi

# *****************************

source_dir=$1
dest_dir=$2 
days=${3:-14}  # if you have provided any input it will consider as last 14 days

usage(){
    echo "usage:: sudo sh backup.sh <source_dir> <dest_dir> <date> "
    exit 1
}

if [ $# -lt 2 ]; then
usage
fi



# source_dir=/home/ec2-user/source_dir

if [ ! -d $source_dir ]; then
echo "$source_dir doesn't exits"
exit 1
fi

# dest_dir=/home/ec2-user/dest_dir

if [ ! -d $dest_dir ]; then
echo "$dest_dir doesn't exits"
exit 1
fi

files=$(find $source_dir -name "*.log" -type f -mtime +$days)

if [ ! -z ${files} ]; then
echo "files found:$files"
timestamp=(date +%F-%H-%M)
zipfilename="$dest_dir/app-logs-$timestamp.zip"
echo "zipfilename is: $zipfilename"
else
echo "files doesn't exist"
fi 
