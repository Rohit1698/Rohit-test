#!/bin/bash



echo "========================= CREATE USER ============================="

#setting up variables

read -p "Enter the User Name: " username
read -s -p "Enter the Password: " password


#this is for creating user


sudo useradd -m $username

#this is for setting the password


echo -e "$password\n$password" | sudo passwd $username

# pipe symbol simulates the password into the passwd command

echo "=========================== USER CREATED==========================="

# for adding date with year date format
date +%Y-%m-%d
