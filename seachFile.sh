#!/bin/bash

set -o errexit

# A script that adds new that let you search for people age.

read -p "what is your age: " age age1 
sam='^[0-9]+$'



if [[ -n $age && $age1 ]]; then     # runs if age and age1 are active 

     for num in $(seq $age $age1)
     do 
          awk -F "," ''/,$num,/' {print $0}' contact.txt
     done

elif [[ -n $age ]]; then
     awk -F "," ''/,$age,/' {print $0}' contact.txt
	
else
     echo "you must type something"
fi


if [[ -n $age || $age1  -ne $sam ]]; then   # To prvent from addingg letter  
     echo "You can only use numbers"
     exit 1
	
#elif [[ -n $age || $age1  ]]; then         # provent three diget numbers	
#     exit 1 
fi
