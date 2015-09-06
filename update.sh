#!/bin/bash
cd /srv/stor/git/Meet-Hub-Hannover/site
git pull &>pull.txt
if grep -q 'Already up-to-date' <pull.txt; then
    exit
fi
#leere Verzeichnisse fuer Jetty erstellen. Kann nicht eingecheckt werden, weil git das nicht kann
mkdir ./jettyWork
mkdir ./meethub-jetty-base/logs
export JETTY_BASE=../meethub-jetty-base
./jetty/bin/jetty.sh restart &>updateLog.txt
cp ./default.vcl /etc/varnish/ &>>updateLog.txt
cp ./varnish /etc/sysconfig/ &>>updateLog.txt
service varnish restart &>>updateLog.txt
echo 'update done' &>>updateLog.txt
