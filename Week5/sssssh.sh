#!/bin/bash

 cat /etc/passwd > pwd.txt


 echo "User account information"
 awk 'BEGIN { 
     FS=":"; 
     print "_____________________________________________________________________________________________________";
     print "| \033[34m------Username------\033[0m | \033[34mUserID\033[0m | \033[34mGroupID\033[0m | \033[34m--------------Home----------------\033[0m | \033[34m------Shell-----\033[0m | ";
 }
 {
     printf("| \033[35m%-20s\033[0m | \033[33m%-6s\033[0m | \033[33m%-7s\033[0m | \033[33m%-34s\033[0m | \033[33m%-7s\033[0m | \n", $1, $3, $4, $5, $7);
 }
 END {
     print("___________________________________________________________________________________________________");
 }' pwd.txt



 
 awk '
BEGIN {
    print "this is the start"
}


/bash/ {
    print "this line contains bash:\n", $0
}

END {
    print "goodbye"  
}    
' pwd.txt
 
 
 
 
 
 
 
 
 
