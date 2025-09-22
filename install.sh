#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "ERROR: You are not in root access"
exit 1
fi

dnf install mysql -y
if [ $? -ne 0 ];then
echo "error while installing"
exit 1
    else
echo "succussfully installed"
fi