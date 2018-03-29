#!/bin/bash
# Week 11 script by Lucas Merriott
# Made in ArchLinux so commands may differ

cd ~
clear

echo "Lets try to get a look at your IP information and the related interface"
sleep 1s
ip a s
sleep 3s
echo 
echo "Trying to ping google.com by hostname"
echo
ping -c 5 Google.com

sleep 1s
echo
echo "Trying to traceroute google.com by hostname"
echo
tracepath -m 12 google.com

sleep 1s
read -p "Press enter when ready to continue"
clear

echo "Showing the Route Table -"
echo
ip route show
echo
sleep 1s

echo "Arp Table -"
echo
ip neigh
echo


echo "Script Complete"



