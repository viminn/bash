#!/bin/bash

lsOutput=$(ls "$1") # GOOD IDEA IN CASE USER ENTERS DIRECTORY WITH SPACES

for f in $lsOutput
do
    echo $f
done
