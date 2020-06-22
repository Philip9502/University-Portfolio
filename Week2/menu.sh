#!/bin/bash

read -p "password : $pass_var" password
echo -n "$password" | sha256sum > passwordattempt.txt

file1="secret.txt"
file2="passwordattempt.txt"

 if cmp  "$file1" "$file2"; then
 echo "Password Match, playa" 
 else 
 echo "NO MATCH!!! N00B"
    fi

echo "please select an option:"
read -p "Copy folder: 1
Create folder:2
Set Password: 3
" option 


if [ "$option" ] =1; then 
      
      #!/bin/bash  
      read -p "Insert the folder you would like to copy" folderName
      if [ "$folderName" ]; then
      read -p "Insert the name of the destination folder" newFoldername
      cp -R "$folderName" "$newFoldername" 
      else
      echo "i couldnt find that folder"
      fi

if [ "$option" ] =2; then
      #!/bin/bash  /home/philip/Scripting/University-portfolio/Week2/foldermaker.sh 

if [ "$option" ] =3; then
      #!/bin/bash /home/philip/Scripting/University-portfolio/Week2/setPassword.sh
exit 0

