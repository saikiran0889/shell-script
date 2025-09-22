#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "ERROR: You are not in root access"
fi