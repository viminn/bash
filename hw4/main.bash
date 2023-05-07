#!/bin/bash

#   Author: Aidan Lapenta
#   B.S. Information Technology
#   CSC 252 10
#   Prof Earl
#   Program 4
#   main.bash
#   Created 24 Mar
#   Due 1 April
#   Program will find and print a long listing for files over a user specified size 
#       and files modified more than a user specified number of days ago or according to
#       default values if fewer than 3 are entered.

# Checks is the user entered too many arguments or the -h option and prints usage statement if true
if [ $# -ge 4 ] || [ "$1" == '-h' ]
then
    echo usage: main.bash [starting directory] [minimum filesize in KB] [age for files in days]
    exit
fi

# Set defaults outside case statement to apply to all cases
declare DIRECTORY=$PWD
declare -i SIZE=10
declare -i AGE=180

# Case statement to assign user input to relevant variable and overwrite defaults
case $# in
    0)
        
    ;;
    1)
        DIRECTORY=$1
    ;;
    2)
        DIRECTORY=$1
        SIZE=$2
    ;;
    3)
        DIRECTORY=$1
        SIZE=$2
        AGE=$3
    ;;
esac

# Prints header for large files and finds every file matching criteria
# For each file, prints a long listing

echo "Files larger than $SIZE KB:"

sizeOutput=$(find $DIRECTORY -type f -size +"$SIZE"k 2>/dev/null)
for file in $sizeOutput
do
    ls -l $file 2>/dev/null
done


# Prints header for old files and finds every file matching criteria
# For each file, prints a long listing

echo "Files modified over $AGE days ago:"

ageOutput=$(find $DIRECTORY -type f -mtime +"$AGE" 2>/dev/null)
for file in $ageOutput
do
    ls -l $file 2>/dev/null
done
