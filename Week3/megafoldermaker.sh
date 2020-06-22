#!/bin/bash

PS3='please choose from the following '
options=( 
     "1 Create a Folder" 
     "2 Copy a Folder" 
     "3 Calculator" 
     "4 Set a Password" 
     "5 Create Week folders" 
     "6 Check File Names" 
     "7 Download a file" 
     "8 exit" )


select option in "${options[@]}"; do
     case $option in


     ${options[0]})
           read -p "type the name of the folder you would like to create " foldername
           mkdir "$foldername"
           ;;
     ${options[1]})
          read -p "Inset the folder you would like to copy " foldername
          if [ $foldername ]; then
          read -p "insert the name of the destination folder" newFoldername
          cp -R "$foldername" "$newFoldername"
          else 
          echo "i couldnt find that folder"
          fi
          ;;
     ${options[2]})  
          echo "Please enter two variables"
          read a
          read b
          echo "Enter Selection"
          echo "1. Addition"
          echo "2. Subtraction"
          echo "3. Multiplication"
          echo "4. Division"
          read ch

          case $ch in
                1) echo $(( $a + $b )) 
                ;;
                2) echo $(( $a - $b )) 
                ;;
                3) echo $(( $a \* $b ))
                ;;
                4) echo $(( scale=2 $a / $b ))
                ;;
          esac 
          ;;
     ${options[3]})
          read -p "insert foldername : $foldername_var"
          echo "foldername : $foldername_var"
          read -p "password : $pass_var" password
          echo -n "$password" | sha256sum > secret.txt
          ;;
     ${options[4]}) 

          if (($#!=2)); then
          echo "Requires two numbers" && exit 1
          fi 

          for ((i=$1; i<=$2; i++))
          do
                echo "Creating directory number $i"
                mkdir "week$i"
          done
          ;;
      ${options[5]})
          file="filenames.txt"

          echo "Welcome to filenames.sh Playa"

           IFS=$'\n'

           for line in $(cat filenames.txt)
           do
                if [[ -f $line ]]; then
                     echo "$line : That file exists :)"
                elif [[ -d $line ]]; then
                     echo "$line : Thats a directory boi"
                else 
                     echo "$line : I dont know what the hell that is fool."
                fi
          done   
          ;;
     ${options[6]})
          read -p "please enter a location where you would like to download to :" location
          mkdir $location
          cd $location

          read -p "Enter URL you would like to download or type exit to quit :" URL

                if [[ $(echo -n $URL) = "exit" ]]; then
                     break
                else 
                     wget -mkEpnp -q -robots=off --user-agent=Mozilla --limit-rate=2.0k --wait=45 --random-wait $URL
                fi
          ;;
     ${options[7]})
          echo "Thanks for using my MEGAMENU"
          exit 0
 
     esac
done