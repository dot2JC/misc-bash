#!/bin/bash
input="/home/student/scripts/userlist.txt"

IFS=''

totallines=0
linecounter=0
blankcounter=0
commentcounter=0

while IFS= read -r line
do
	if [ $1 == "-a" ] #add
	then
		first=${2:0:1}
		middle=${3:0:1}
		username="$first$middle${4}"	#create the username
	elif [ $1 == "-d" ] #delete
		echo "Are you sure you want to delete users?"
		echo "Are you REALLY sure you want to delete users?"
	elif [ $1 == "-df" ] #force delete
		
	else
		echo "Error in argument, try again!"
	fi
	#echo "$line"
	if [ "${line:0:1}" = '' ]  #checks for blank
	then
		blankcounter=$((blankcounter+1)) #iterate blank line
		totallines=$((totallines+1))
	elif [ "${line:0:1}" = '#' ] #checks for comment
		commentcounter=$((commentcounter+1))
		totallines=$((totallines+1))
	else
		linecounter=$((linecounter+1)) #iterate text line
		totallines=$((totallines+1))
	fi
done < "$input"

echo "Blank lines: $blankcounter"
echo "Text  lines: $linecounter"
echo "Total lines: $totallines"


