#!/bin/bash
shopt -s -o nounset

#IFS_SAVE=${IFS}
#IFS=,
#while read fname mname lname gname
read fname mname lname gname
#do
	if [ -s ${fname} ]
	then
		echo "No first name"
	fi

	echo "First name is ${fname}"
	echo "Middle name is ${mname}"
	echo "Last name is ${lname}"
	echo "Group name is ${gname}"
#done < ${1}
#IFS=${IFS_SAVE}
