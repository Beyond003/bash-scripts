#!/bin/bash

#if multiplication and division default value -> 1
#if Addition and subtraction default value -> 0

# Author: Abdelrahman Elsayed
# Date created: 8/5/2025
# Last modified: 8/5/2025
# Description: Calculator Script
# Usage: ./calc

op="$1"

# Determine the default value
if [[ "$op" == "+" || "$op" == "-" ]];
then
        default=0
elif [[ "$op" == "*" || "$op" == "/" ]];
then
        default=1
else
        echo "please, Enter a valid mathematical operation."
        exit 1
fi

# Our formula
echo "$((${2:-$default} $op ${3:-$default} $op ${4:-$default} $op ${5:-$default} $op ${6:-$default} $op ${7:-$default} $op ${8:-$default} $op ${9:-$default}))"
