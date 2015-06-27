#!/bin/bash
git pull
./jetty/bin/jetty.sh restart
cp ./default.vcl /etc/varnish/
cp ./varnish /etc/sysconfig/
service varnish restart
