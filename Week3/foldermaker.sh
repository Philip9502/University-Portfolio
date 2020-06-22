#!/bin/bash
if (( $#!=2 )); then
    echo "Requires two numbers" && exit 1
fi 

for (( i=$1; i<=$2; i++ )) 
do
    mkdir Week$i $i1
    mkdir Week$i $i2

done