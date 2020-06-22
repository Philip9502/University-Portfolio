#!/bin/bash
##File 1 is the password saved in secret.txt
##FIle 2 is the new password input
read -p "password : $pass_var" password
echo -n "$password" | sha256sum > passwordattempt.txt

file1="secret.txt"
file2="passwordattempt.txt"

if cmp  "$file1" "$file2"; then
  echo "Password Match, playa"
else
  echo "NO MATCH!!! N00B"
fi 