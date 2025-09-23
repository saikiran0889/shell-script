#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "ERROR: You are not in root access"
exit 1
fi

validate(){

    if [ $? -ne 0 ];then
echo "error while installing mysql"
exit 1
    else
echo "succussfully mysql installed"
fi
}

dnf install mysql -y
validate $? "MYSQL"

dnf install nginx -y
validate $? "nginx"
