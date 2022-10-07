#!/bin/bash

echo -n "Hello, your username is $USER. What is your name?  "
read name
echo " $name, I just created a file for you"
echo " Info for $name " > textfile.txt
echo " Your files and directories " >> textfile.txt
ls >> textfile.txt
echo " Your ip address " >> textfile.txt
ip add >> textfile.txt
echo " Your CPU " >> textfile.txt
lscpu >> textfile.txt
chmod 777 textfile.txt
sleep 3s
cat textfile.txt

