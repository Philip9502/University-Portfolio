#!/bin/bash

#ifconfig - Interface configre 

#ip - similar to ifconfig #ip  adress

##### New Script #### 


net_info="$(ifconfig)"

addresses=$(echo "$net_info" | sed -n '/inet / {
    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Maks:/
    s/broadcast/\b\t\tBroasdcast Address:/
    p
    }')

echo -e "The Ip Adresses on this machine are:\n$addresses"



## p is for print
### \n to hit enter
####\t\t\t is tab
##### made the addresses a variable to be called back later