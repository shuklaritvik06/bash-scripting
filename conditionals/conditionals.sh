#!/bin/bash

# If Else
if [ 1 -eq 1 ]
then
    echo "1 equals 1"
else
    echo "1 does not equal 1"
fi

# If Else If
if [ 1 -eq 1 ]
then
    echo "1 equals 1"
elif [ 1 -eq 2 ]
then
    echo "1 equals 2"
else
    echo "1 does not equal 1 or 2"
fi

# Switch
case $1 in
    start)
        echo "Starting"
        ;;
    stop)
        echo "Stopping"
        ;;
    restart)
        echo "Restarting"
        ;;
    *)
        echo "Usage: $0 {start|stop|restart}"
        exit 1
        ;;
esac

# AND OR
if [[ 1 -eq 1 && 1 -lt 2 || 2 -gt 1 ]]
then
    echo "1 equals 1"
elif [ 1 -eq 2 ]
then
    echo "1 equals 2"
else
    echo "1 does not equal 1 or 2"
fi


# File Check

if [[ ! -f "./text.md" ]]
then
echo "File Not Found!"
else
echo "File Found!"
fi
