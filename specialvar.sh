#!/bin/bash

echo "print all vaiables in linux: $@"

echo "print all vaiables in linux: $*"
echo "script name: $0"
echo "current working diectory: $PWD"
echo "who is running the scipt: $USER"
echo "Home die=rectory: $HOME"
echo "PID of this script: $$"
sleep 20 &
echo "PID of last command executed: $!"