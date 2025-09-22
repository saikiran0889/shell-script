#!/bin/bash

num1=100
num2=200
NAME=devops

sum=$(($num1+$num2+$NAME))

echo "total sum : ${sum}"

LEADERS=("modi" "putin" "trunp")
echo "leaders names= ${LEADERS[@]}"
echo "leaders names= ${LEADERS[0]}"
echo "leaders names= ${LEADERS[2]}"