#!/bin/bash

#   Author: Aidan Lapenta
#   B.S. Information Technology
#   CSC 252 10
#   Prof Earl
#   Program 3
#   main.bash
#   Created 24 Feb 2022
#   Due 4 Mar 2022
#   Program will take a file and output sorted data,
#       display filenames of .cpp files in the home directory,
#       create a hard link pointing to students2.dat, and a soft link for the same file,
#       and show inode & filename pairs for files in ~earl/public.

echo 1.1:
sort -b students2.dat

echo 1.2:
grep -nw "CS" students2.dat

echo 1.3:
grep -n "John" students2.dat

echo 1.4:
grep -w "ECE" students2.dat | sort -k4r

echo 1.5:
cut -f 2,4 students2.dat | sort -k2

echo 2:
find /home/students.kutztown.edu/alape632 -type f -name "*.cpp" 2>/dev/null

echo 3.1:
rm -f newFile.hard

echo 3.2:
ln students2.dat newFile.hard

echo 3.3:
# The links bit following permission bits for newFile.hard and the original 
#   students2.dat is 2, meaning the two files are linked and referring to same file. 
# The file size listed after the group and the time of last update is also the 
#   same between the two.

echo 4.1:
rm -f newFile.soft

echo 4.2:
ln -s students2.dat newFile.soft

echo 4.3:
# The links bit following permissions for newFile.soft is only 1, showing the files
#   are different. 
# The permission bits are also different. The file sizes and modification times
#   are different.

echo 5:
ls -aiR ~earl/public | sort -n | tail -n +10
