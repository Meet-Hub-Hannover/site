#!/bin/bash
cd /srv/stor/git/Meet-Hub-Hannover/site
git pull >pull.txt
if grep -q 'Already up-to-date' <pull.txt; then
    exit
fi
./jetty/bin/jetty.sh restart 2>&1 1>updateLog.txt
cp ./default.vcl /etc/varnish/ 2>&1 1>>updateLog.txt
cp ./varnish /etc/sysconfig/ 2>&1 1>>updateLog.txt
service varnish restart 2>&1 1>>updateLog.txt
echo 'update done' >>updateLog.txt
