#!/bin/bash
#This Script will ping multiple server at once confirm there status
echo "#####################################"
echo "Running Ping Master Linux by BxtGeek"
echo "#####################################"
echo
ping -c 5 google.com >> /dev/null
echo $? >> /dev/null
if [ $? -eq 0 ]
then 
    echo "#########################"
    echo "Pinging Server google.com"
    echo "#########################"
    echo 
    echo "#########################"
    echo "Server is Pingable"
    echo "#########################"
    echo
else
    echo "#########################"
    echo "Server is not Pingable"
    echo "#########################"
fi