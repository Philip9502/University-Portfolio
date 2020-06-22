#!/bin/bash

read -p "please enter a location where you would like to download to :" location
mkdir $location
cd $location

read -p "Enter URL you would like to download or type exit to quit :" URL

    if [[ $(echo -n $URL) = "exit" ]]; then
        break
    else 
        wget -mkEpnp -q -robots=off --user-agent=Mozilla --limit-rate=2.0k --wait=45 --random-wait $URL
    fi