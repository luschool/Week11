#!/bin/bash
# Week 11 script by Lucas Merriott
# Made in ArchLinux so commands may differ

cd ~
clear

echo "Running a telnet request to wikipedia.org on port 80"
echo
telnet www.wikipedia.org 80
echo
sleep 2s

echo "Now running the curl utility on wikipedia.org and outputting the results to test.txt"
curl --trace-ascii test.txt http://www.wikipedia.org
echo
read -p "Press enter when you're ready to view the output piped to less"

cat test.txt | less -P "Press Shift+Q to exit"
clear
sleep 1s
echo
echo "using tcpdump -D to dump interfaces"
sleep 2s
echo
tcpdump -D
echo
sleep 2s
echo "Using nmap to view open ports on a website"

sleep 2s
echo 
nmap -v scanme.nmap.org

echo
sleep 2s
echo "Now lets take a look at what programs are listening to ports using lsof piped to less"
echo
read -p "Press enter when youre ready to view the output piped to less"

lsof -n -i | less -P "Press SHIFT + Q to exit"
echo
rm test.txt
echo "Script Complete"