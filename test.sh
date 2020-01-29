#!/bin/bash

if [ ${#} -eq 3 ]
then
	if [ ${3} = "cleetus" ]
	then
		if [ ${2} = "passw0rd" ]
		then
			#variable=q
			var1=${1:2:1} #arrays start at 0 D:
			if [ $var1 = "q" ]
			then
				echo "SUCCESS!!!"
				exit 1
			else
				echo "cable issue, try again"
				exit 2
			fi
		else
			echo "one!11!"
			exit 3
		fi
	elif [ ${3} = "jimbob" ]
	then
		if [ ${1} = "passw0rd" ]
		then
			echo "SUCCCCCCess"
			exit 1
		else
			echo "no extra credit"
			exit 2
		fi	
	else
		echo "dos"
		exit 3	
	fi
else
	echo "tree"
	exit 4	
fi
