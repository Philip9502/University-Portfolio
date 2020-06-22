#!/bin/bash
#if there arent two arguments to the script
if (( $#!=2 )); then
     #print an error and exit
     echo "Error, provide two numbers" && exit 1
fi

#For every number between the first argument and the last
for ((i=$1; i<=$2; i++))
do
  #create a new folder for that number
     echo "fruit: apple  $i1"
     echo "fruit: bananna $i2"     
done