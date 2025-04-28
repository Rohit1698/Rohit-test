#!/bin/bash

<<comment

this is practice comment
comment

# above is multline comment


read -p "is it raining today (Yes/No)" choice

if [[ $choice == "yes" ]];
then 
	echo "Take an Umbrella"
else
	echo "No need of an umbrella"
fi
