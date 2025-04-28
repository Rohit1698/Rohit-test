#!/bin/bash



echo "========================= CREATE USER ============================="

#setting up variables

username="Rohit"
password="test@123"

#this is for creating user


sudo useradd -m $username

#this is for setting the password


echo -e "$password\n$password" | sudo passwd $username

# pipe symbol simulates the password into the passwd command

echo "=========================== USER CREATED==========================="
