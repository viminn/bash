#!/bin/bash

read -p "Enter a word: "

case $REPLY in
    cat)
        echo "Cat"
    ;;
    dog)
        echo "Dog"
    ;;
    fish)
        echo "Fish"
    ;;
esac

#case $# in
#   0)
#       command
#   1)
#       command
#esac   
#USE FOR HOMEWORK
