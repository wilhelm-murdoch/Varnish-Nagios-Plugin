#!/bin/bash

PID=`pgrep varnishd | wc -l`
if [ $PID -eq 0 ];
then
	echo Critical, Varnish is down. Nagios is attempting to restart the service
	`/etc/init.d/varnish restart` >/dev/null 2>&1
fi

PID=`pgrep varnishd | wc -l`
if [ $PID -eq 0 ];
then
	echo Critical, Varnish is down and Nagios failed to restart the service
	exit 2
fi

echo Ok, Varnish is up and running
exit 0