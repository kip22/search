#!/bin/bash

# A script that adds new that let you search for people age.

read -p "what is your age: " age age2


if [[ -n "$age" ]]; then

     awk -F "," ''/,$age,/' {print $0}' not.txt
     echo "That good"
     
else
     echo "you have to add a number"
fi








