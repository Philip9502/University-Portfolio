#!/bin/bash

printError()
{ 
    echo -e "\033[31mERROR:\033[0m $1"
}

getNumber()
{
     read -p "$1" 
     while (( $REPLY<$2 || $REPLY>$3 )); do
        printError "Input must be between $2 and $3"
        read -p "$1:"
     done
}


correct=42

echo "#####LeTs PlAy A lItTlE gAmE#####"
echo "please enter your guess"
getNumber "Must be a number between 1 and 100 :" 1 100


   
   
    if [[ $1 -eq $correct ]]; then
         echo "Correct Guess"
    elif [[ $1 -gt $correct ]]; then
         echo "too high"
    else 
         echo "too low"
    fi

    echo "try again"
    read $1
done



