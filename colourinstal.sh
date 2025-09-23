#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $USERID -ne 0 ]; then
echo -e "$R ERROR: You are not in root access $Y"
exit 1
fi

validate(){

    if [ $1 -ne 0 ];then
echo "error while installing $2"
exit 1
    else
echo -e "$Y succussfully $2 installed $N"
fi
}

dnf list install mysql -y

if [ $? -ne 0 ]; then
dnf install mysql -y
validate $? "MYSQL"
else
    echo "MYSQL is already installed $Y skipped $N"
fi





dnf install mysql -y
validate $? "MYSQL"

dnf install nginx -y
validate $? "nginx"
