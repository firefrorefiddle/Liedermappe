#!/bin/sh

PORT=
if [ -z "$1" ]
then
	PORT=8000
else
	PORT=$1
fi

swipl -f webserver.pl -g "start([port($PORT), mode(foreground)])."
