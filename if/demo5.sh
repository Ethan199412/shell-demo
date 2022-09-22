#!/bin/bash

read -p "please enter a filename: " file

if [ -z $file ]
    then
        echo "error, please input a filename"
        exit 1
elif [ ! -e "$file" ]
    then
        echo "$file not exist"
        exit 2
elif [ -f "$file" ]
    then
        echo "$file" is a regular file
fi