#!/bin/bash

echo "please enter the number"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
echo "this $NUMBER is even number"
else
echo "this $NUMBER is odd number"
fi