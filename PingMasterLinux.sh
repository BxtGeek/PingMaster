#!/bin/bash
#This Script will ping multiple server at once confirm there status
#!/bin/bash
filename='server.txt'
n=1
while read line; do
# reading each line
echo "Pinging Server : $line"
ping "$line" >> /dev/null
echo $? >> /dev/null
if [ $? -eq 0 ]
then 
    echo "#########################"
    echo "Pinging Server $line"
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
n=$((n+1))
done < $filename