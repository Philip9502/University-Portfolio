#!/bin/bash
read -p "Insert the folder you would like to copy" folderName
# if the name ios a valid directory
  if [ "$folderName" ]; then
#copy it to a new location
read -p "Insert the name of the destination folder" newFoldername
cp -R "$folderName" "$newFoldername" 
  else
  #print an error message
echo "i couldnt find that folder"
fi