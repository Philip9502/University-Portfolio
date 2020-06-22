#!/bin/bash

cd ~/University/Scripting/University-Portfolio


sed_info="$(grep -r sed)"

echo "All the sed commands are:\n$sed_info"

M_info="$(grep -r '^m')"

echo "all lines that start with m are:\n\n\n$M_info"


tr_digits="$(grep -r '[0-9][0-9][0-9][0-9][^0-9]')"  ###4 numbers in a row??

echo "all lines that contain 3 digits are:\n$tr_digits"


nuber_lines="$(grep -r 'echo word word word')"

echo "all lines that contain more than three words:\n$number_lines"