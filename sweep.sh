#!/bin/bash
if ["$1"= =""]
then
echo "No Input"
echo "Syntax %sweep.sh 19.168.2."

else

for ip in `seq 1 254 ` ; do
ping -c 1 $1.$ip | grep "64" | cut -d " " -f 4 | tr -d ":"
done
fi
