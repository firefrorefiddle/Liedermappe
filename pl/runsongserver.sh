#!/bin/sh

PORT=
if [ -z "$1" ]
then
	PORT=5555
else
	PORT=$1
fi

swipl -f songserver.pl -g "start([port($PORT), mode(foreground)])."
