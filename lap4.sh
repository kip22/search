#!/bin/bash

# A script that adds new that let you search for people age.

read -p "what is your age: " age age1 


#if [[ -n "$age" ]]; then
#     awk -F "," ''/,$age,/' {print $0}' not.txt
#     echo "That good"
#
#elif [[ -n "$age" && "$age1" ]]; then
#		
     for num in {$age..$age1}; do 
       #   awk -F "," ''/,$num,/' {print $0}' not.txt
	  echo "Two point $num" 
     done	
     
else
     echo "you have to add a number"
fi








