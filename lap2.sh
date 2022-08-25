#!/bin/sh


# A script used to search through text files.

AGE = 0

read -i "can you pick an age to fine" AGE

dig = ${#AGE}

if [[ $dig = 2 ]] ; then

	awk -F "," "/,$AGE,/ {print $0}" not.txt
	
	elif [[ $dig = 4 ]]; then
		
	  for NUM in $AGE; do 
		  
        	awk -F "," "/,$NUM,/ {print $0}" not.txt
        	done

	else
		echo "pleas add a number1"



fi
