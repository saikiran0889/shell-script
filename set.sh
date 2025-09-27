#!/bin/bash
set -e


# error (){
# echo "this is error messag $LINENO, command is $BASH_COMMAND"
# }

trap 'echo "this is error messag $LINENO, command is $BASH_COMMAND"'  ERR




echo "hello world"
echo "before error...."
scsdzfcesz
echo "after error ....."

