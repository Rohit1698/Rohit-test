#!/bin/bash

<< help
this script will show thw process status and process ID that is PID when passed as an argument of process name.
help

read -p "what do you want to do with your proces of $1 : (status/pid):" choice

function check_status() {
	echo "Monitoring the process service status"
	sudo systemctl status $1
}

if [[ $choice == "status" ]];
then
	check_status $1
elif [[ $choice == "pid" ]];
then
	echo "process id of $1 $( pgrep $1 )"
else
	echo "wrong choice"
fi
