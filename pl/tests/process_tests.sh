#!/bin/bash

SUCCESS=0

echo "Test foreground"
swipl -f server_test_simple_server.pl -g "start(foreground)." &
sleep 1
swipl -f server_test_teardown.pl -g "stop." -t halt.

SUCCESS=$?

sleep 1

echo "Test background"
swipl -f server_test_simple_server.pl -g "start(background)." &
sleep 1
swipl -f server_test_teardown.pl -g "stop." -t halt.

SUCCESS=$(($SUCCESS + $?))

sleep 1
if [ $? = 0 ]
then
    echo "Tests succeeded, check if server.pid is removed"

    if [ ! -f server.pid ]
    then
	echo "yes"
	exit 0
    else
	echo "no!"
	exit 2
    fi
    
else
    echo "Failed."
fi



exit $?
