#!/bin/bash
grep needle haystack.txt
## This is telling grep to search the text file "haystack.txt" the word needle

grep -r echo
##this is telling grep to go through the entire directory and searchers for all of the 'echo' commands

grep -r 'echo -.*'
##Show only statements that contain an echo with a flag. 

grep -r "^echo"
##Show only lines that start with 'echo'. 

grep -r 'echo .*\"[A-Z].*\"'
##Show only echo statements where the text is in double quotes and starts with an uppercase letter. 

grep -r 'echo .*\".*!\"'

##Show only echo statements with text in double quotes that ends in an exclamation mark. 