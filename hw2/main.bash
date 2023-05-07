#!/bin/bash

#   Author: Aidan Lapenta
#   B.S. Information Technology
#   CSC 252 10
#   Prof Earl
#   Program 2
#   main.bash
#   Created 22 Feb 2022
#   Due 25 Feb 2022
#   Program will output information on the current user and their groups,
#       info on the current system, and several formatted dates.


echo 1a.
id -un

echo 1b.
id -u

echo 1c.
id -g

echo 1d.
id -Gn

echo
echo 2a.
uname -o

echo 2b.
uname -n

echo 2c.
uname -srv

echo
echo 3a.
date +%D --date='September 5, 2019'

echo 3b.
date +"%A, %B %d, %Y"

echo 3c.
date --rfc-3339 'seconds'
