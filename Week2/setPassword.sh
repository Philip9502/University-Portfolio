#!/bin/bash
read -p "Insert foldername : $foldername_var"
echo "foldername : $foldername_var"
read -p "password : $pass_var" password
echo -n "$password" | sha256sum > secret.txt