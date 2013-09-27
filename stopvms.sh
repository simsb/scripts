#!/bin/bash
if [ -n "$1" ]
then
    echo "Stopping $1"
    /usr/bin/VBoxManage controlvm "$1" savestate
    exit
fi

echo "checking host name"
if [[ "`uname -a`" =~ .*benspc.* ]]
then
    /usr/bin/VBoxManage controlvm "Oracle Developer Days" savestate
    /usr/bin/VBoxManage controlvm "win7" savestate
elif [[ "`uname -a`" =~ .*heise.* ]]
then
    /usr/bin/VBoxManage controlvm "Oracle Developer Days" savestate
    /usr/bin/VBoxManage controlvm "win7" savestate
else
    echo "nothing to do on this host"
fi
