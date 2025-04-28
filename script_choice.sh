#!/bin/bash

read -p "Is it raining (yes/no) : " choice
if [[ $choice == "yes" || $choice == "Yes" ]]; then
	echo "Take an umbrella"
elif [[ $choice == "no" || $choice == "No" ]]; then
	echo "No need of an umbrella"
else 
	echo "you need to use either yes or no"
fi
