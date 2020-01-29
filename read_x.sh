#!/bin/bash

if [ ${#} != 1 ] 
then
	echo "Invalid Arguments!"
	exit 30
fi

if [ ! -f ${1} ] 
then
	echo "File not found!"
	exit 31
fi

IFS_SAVE=${IFS}
IFS=,

totallines=0
linecounter=0
blankcounter=0
commentcounter=0

while read fname mname lname
do
	if [ -z $fname ] #catch blank lines
	then
		let ++blankcounter
		let ++totallines
		continue
	fi
	if [ ${fname:0:1} = '#' ] #catch comments
	then
		let ++commentcounter
		let ++totallines
		#let $commentname = "$fname,$mname,$lname"
		echo "$fname,$mname,$lname"
		continue
	fi
	if [ ${mname:0:1} = 'd' ] #check for middle name starting with d
	then
		echo "$fname,$mname,$lname"
	fi
	let ++totallines
	let ++linecounter
	echo "$fname,$mname,$lname"
done < $1
IFS=${IFS_SAVE}

echo "$totallines total lines"
echo "$linecounter user names"
echo "$blankcounter blank lines"
echo "$commentcounter comment lines"




