#!/bin/bash

echo ""
echo "Pick a program!"
echo "---------------"
echo ""
echo "1) Delete users"
echo "2) Add users"
echo ""
echo "Please enter a number (1 or 2):"
read shchoice

if [ $shchoice -eq 1 ]
then
	echo "Are you sure you want to delete users? (y/n)"
	read delconfirm
	if [ $delconfirm = 'y' ]
	then
		#do delete
		echo "do the delete thing"
	elif [ $delconfirm = 'n' ]
	then
		#don't delete
		echo "don't do the delete thing"
		#exit 0
	else
		#error
		echo "----------"
		echo "ERROR!"
		echo "Only y or n is permitted"
		echo "----------"
	fi
elif [ $shchoice -eq 2 ]
then
	echo "Enter a First name, middle name, and last name"
	read fname mname lname
	# probably pass in args for first middle and last sooo
	fname=${1:0:1}
	mname=${2:0:1}
	username="$first$second${3}"
	if grep -xq "" ./userlist.txt #user check, not sure how yet though
	then
		echo "ERROR, username already exists!"
		exit 30
	else 
		#add user to list
	fi
	#echo "yea some code here"
else 
	#error
	echo "----------"
	echo "ERROR!"
	echo "Only 1 or 2 is permitted"
	echo "----------"
fi
