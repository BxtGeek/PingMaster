#!/bin/bash
#This Script will ping multiple server at once confirm there status
#!/bin/bash
filename='server.txt'
n=1
echo "     Ping Master version:2"
echo  "--+---------------------+--------------"
echo -e "SN|\tServer Name\t|Server status"
echo  "--+---------------------+--------------"
while read line; do
# reading each line
awk -v n=$n 'NR==n {printf NR " " "|" "\t%s",$0 "\t|"}' $filename
ping -c 1 "$line" >> /dev/null
echo $? >> /dev/null
if [ $? -eq 0 ]
then
    echo "success"
else
    echo "error"
fi
n=$((n+1))
done < $filename
echo  "--+---------------------+--------------"