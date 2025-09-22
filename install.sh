#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "ERROR: You are not in root access"
fi

dnf install mysql -y
if [ $? -ne 0];then
echo "error while installing"
    else
echo "succussfully installed"
fi