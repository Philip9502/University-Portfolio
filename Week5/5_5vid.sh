#!/bin/bash

awk '
BEGIN {
    print "this is the start"
}

/[[:digit:]]/ {           
    print "this line contains a number:\n", $0
}


/sommething/ {
    print "this line contains something:\n", $0
}


{
    print "this is a line:\n", $0
}


END {
    print "goodbye"  
}    
' ./input.txt








awk '{printf "the result is %.2f", $1 }'