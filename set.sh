#!/bin/bash
set -e


error (){
echo "this is errorr messag"
}

trap error ERR




echo "hello world"
echo "before error...."
scsdzfcesz
echo "after error ....."

