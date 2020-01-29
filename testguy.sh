#!/bin/bash

c=$(./test.sh "$@")
bigdata=$?

if [ $bigdata -eq 0 ]
then
	echo "haha no"
	exit 0
elif [ $bigdata -eq 1 ]
then
	echo "sure thing boss"
	exit 1
elif [ $bigdata -eq 2 ]
then
	echo "getting right on that boss"
	exit 2
elif [ $bigdata -eq 3 ]
then
	echo "might do that boss"
	exit 3
elif [ $bigdata -eq 4 ]
then
	echo "boss, it's gonna explode"
	exit 4
else
	echo "something borked here"
fi
