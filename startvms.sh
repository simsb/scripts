#!/bin/bash

if [ -n "$1" ]
then
    echo "Starting $1"
    VBoxManage startvm "$1" --type headless 
    exit
fi



if [[ "`uname -a`" =~ .*benspc.* ]]
    then echo "benspc"
    VBoxManage startvm "Oracle Developer Days" --type headless 
#    VBoxManage startvm "win7" --type headless 
fi

if [[ "`uname -a`" =~ .*heise.* ]]
    then echo "heise"
    VBoxManage startvm "Oracle Developer Days" --type headless 
    VBoxManage startvm "win7" --type headless 
fi
