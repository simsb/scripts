#!/bin/bash

 ssh -f root@blakesroad.plus.com -L 5000:192.168.1.14:3389 -N
echo "Opened tunnel to abunai local port 5000 remote port 3389"
