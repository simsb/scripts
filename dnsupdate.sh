#!/bin/bash
 
currentIpAddr=$(/sbin/ifconfig eth0 | sed --quiet 's/.*inet addr:\(.*\)\s*Bcast.*/\1/p')
 
echo "server framework.corelogic.local" > ~/.nsupdate.txt
echo "update delete benspc.corelogic.local A" >> ~/.nsupdate.txt
echo "update add benspc.corelogic.local 3600 IN A $currentIpAddr" >> ~/.nsupdate.txt
echo "send" >> ~/.nsupdate.txt
echo "" >> ~/.nsupdate.txt

/usr/bin/nsupdate -d ~/.nsupdate.txt
