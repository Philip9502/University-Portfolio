#!/bin/bash
#User input
echo "please enter two variables"
read a 
read b
#Input type of mathmatical function
echo "Enter selection :"
echo "1. Addition"
echo "2. subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch
#Switch case to perform calculations
case $ch in 
    1)echo $(( $a + $b ))
    ;;
    2)echo $(( $a - $b ))
    ;;
    3)echo $(( $a \* $b ))
    ;;
    4)echo $(( scale=2; $a / $b ))
    ;;
esac 