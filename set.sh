#!/bin/bash
set -e


error (){
echo "this is error messag"
}

trap error ERR




echo "hello world"
echo "before error...."
scsdzfcesz
echo "after error ....."

