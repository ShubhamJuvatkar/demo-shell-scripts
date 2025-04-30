#!/bin/bash

# This script is to understand Function in linux 


function create_user {
	read -p "Enter the username: " username

	sudo useradd -m $username

	echo "User $username created successfully" 

}

create_user
