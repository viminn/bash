#!/bin/bash

read -p "Enter a number: " NUM

if [ "$NUM" = "1" ] # single bracket is test command
# double quotes good idea to deal with potential whitespace from input
# double brackets for variables with whitespace
then
    echo "You entered 1"
elif [ "$NUM" = 2 ]; then
    echo "You entered 2"
else
    echo "You entered a number"
fi

echo "done"

# help test for testing options
# '$#' to check for how many arguments get passed to the script
# then refer to them with '$1' starting with 1, 0 is the script
# can be shifted to the left with shift

#use brackets to refer to indexes ex) echo ${names[1]}
# for val in CAT DOG FISH
# do
#   [commands]
# done

# for f in *; do echo $f; done // * uses globbing for every file
#   in current directory

# findOutput=$(find) // Command substitution
