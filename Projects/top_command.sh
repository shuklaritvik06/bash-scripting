#!/bin/bash
FILE="temp.txt"
while true
    do
        i=0
        pids=`ls /proc | grep -E '^[0-9]' | sort -n`
        count=`ls /proc | grep -E '^[0-9]' | wc -l`
        printf "Total Processes Running: %s\n" $count
        printf "PID\tSTATE\tUSER\tCOMMAND\n"
        if [[ -f "$FILE" ]]; then
            cat temp.txt
            > temp.txt
        else
            touch temp.txt
        fi
        for pid in $pids
            do
                if [[ -r /proc/$pid/stat ]]; then
                    user_id=$(grep -Po '(?<=Uid:\s)(\d+)' /proc/$pid/status)
                    state=$(cat /proc/$pid/stat | awk '{print $3}')
                    user=$(id -nu $user_id)
                    comm=$(grep -Po '^[^\s\/]+' /proc/$pid/comm)
                    printf "%d\t%s\t%s\t%s\n" $pid $state $user $comm >> temp.txt
                fi
            done
        sleep 2
        clear
    done