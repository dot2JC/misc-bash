#!/bin/bash
if [ ${#} -eq 4 ]
then
	echo ""
	first=${1:0:1}
	second=${2:0:1}
	username="$first$second${3}"
	echo "The username for ${1} ${2} ${3} is $username."
	echo "The username, $username , has ${#username} characters."
	secchar=${username:1:1}
	echo "The second character of bdblack is a '$secchar'."
	if (( $4 % 2 ))
	then
		echo "The age is ${4}, ${4} is odd."
	else
		echo "The age is ${4}, ${4} is even."
	fi
	newage=$(( ${4} + 10 ))
	echo "In ten years $username will be $newage years old."
	if [ ${#1} -gt ${#2} ]
	then
		large=${1}
		small=${2}
	else
		large=${2}
		small=${1}
	fi
	if [ ${#3} -gt ${#large} ]
	then
		large=${3}
	elif [ ${#3} -lt ${#small} ]
	then
		small=${3}
	fi
	echo "The smallest name, $small, has ${#small} characters."
	echo "The largest name, $large, has ${#large} characters."
else
	echo "Requires 4 arguments, received ${#}..."
fi
