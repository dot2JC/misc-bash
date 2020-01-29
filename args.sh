#!/bin/bash
#echo "The number of arguments passed is ${#}"

if [ ${#} -eq  3 ] 
then
#FIRST PROBLEM
	num=$((${1} + ${2} + ${3}))
	echo "The (${#}) numbers are ${1}, ${2}, and ${3}"
	echo ""
	echo "1)"
	echo "The sum is $num"


#SECOND PROBLEM
	if [ ${1} -gt ${2} ]
	then
		high=${1}
		low=${2}
	else
		high=${2}
		low=${1}		
	fi
	if [ ${3} -gt $high ] 
	then
		high=${3}
	elif [ ${3} -lt $low ] 
	then
		low=${3}
	fi
	echo ""
	echo "2)"
	echo "The HIGHEST number is $high"
	echo "The LOWEST number is $low"

#THIRD PROBLEM
	#num=$((${1} + ${2} + ${3}))
	if (( $1 % 2 ))
	then
		checkone=odd
	else
		checkone=even
	fi	
	if (( $2 % 2 ))
	then
		checktwo=odd
	else
		checktwo=even
	fi
	if (( $3 % 2 ))
	then
		checkthree=odd
	else
		checkthree=even
	fi
	echo ""
	echo "3)"
	echo "The number $1 is $checkone"
	echo "The number $2 is $checktwo"
	echo "The number $3 is $checkthree"

#PROBLEM FOUR
	if [ $3 -eq 3 ]
	then
		if (( $1 % 2 ))
		then
			numone=odd
			let "x = $2 + $3"
			echo ""
			echo "4)"
			echo "The first number is $numone"
			echo "The sum of $2 and $3 is $x"
		else
			numone=even
			let "x = $2 * $3"
			echo ""
			echo "4)"
			echo "The first number is $numone"
			echo "The product of $2 and $3 is $x"
		fi
	fi
#PROBLEM FIVE
	echo ""
	echo "*********************************************************"
	echo "*                 Please enter a word                   *"
	echo "*********************************************************"
	read userword
	echo ""
	echo "The first character of $userword is ${userword:0:1}"
	echo "The fourth character of $userword is ${userword:3:1}"	
	
else 
	echo "Expected 3 numbers, got ${#}"
	#echo "Expected 3 numbers, got $3"
	echo "Exiting, code 33"
fi
