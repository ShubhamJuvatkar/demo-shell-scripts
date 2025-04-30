#!/bin/bash

<<INFO
This shell script is to check if the user exists before creation
INFO


read -p "Enter the username you want to check " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')



if [ $count == 0 ];
then
	echo "user does not exist"

else
	echo "user exists"

fi




