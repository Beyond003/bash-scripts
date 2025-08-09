#!/bin/bash

# Author: Abdelrahman Elsayed
# Date created: 8/8/2025
# Last modified: 8/8/2025
# Descritption: gives us the number of seconds in a given arguments.
# Usage: ./timer.sh -m: -s:


total_sec=""
while getopts "m:s:" opt; do
        case "$opt" in
                m) total_sec=$(($total_sec + $OPTARG * 60));;
                s) total_sec=$(($total_sec + $OPTARG));;
                \?) ;;
        esac
done

while [ $total_sec -gt 0  ]; do
        echo $total_sec
        total_sec=$(( $total_sec -1 ))
        sleep 1s
done

echo "Time's Up!"
