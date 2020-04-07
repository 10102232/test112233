#!/bin/bash
cd v2ray
./v2ray&
sleep 9d
kill -9 $(ps -ef|grep v2ray|grep -v grep|awk '{print $2}')
./edge -d n2n0 -a 10.255.255.1 -c fanqiang -k fanqiang -r -b -l 132.232.37.251:10000 -f
./gost -L=:18080
