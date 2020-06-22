#!/bin/bash


file="filenames.txt"

echo "Welcome to filenames.sh Playa"

IFS=$'\n'

for line in $(cat filenames.txt)
do
    if [[ -f $line ]]; then
        echo "$line : That file exists :)"
    elif [[ -d $line ]]; then
        echo "$line : Thats a directory boi"
    else 
        echo "$line : I dont know what the hell that is fool."
    fi
done 


