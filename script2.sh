#!/bin/bash
#Are there 3 arguments being passed or not
if [ $# -eq 3 ]
 then
#Check which are biggest and smallest
  if [ $1 -gt $2 ]
   then
    big=$1
    small=$2
  else
    big=$2
    small=$1
  fi
  if [ $3 -gt $big ]
   then
    big=$3
  elif [ $3 -lt $small ]
   then
    small=$3
  fi
  
  echo "$1"
  echo "$2"
  echo "$3"
  echo "The smallest is $small"
  echo "The largest is $big"

else
 echo "Usage error expected 3 numbers, got $#"
 echo "Exiting, code 33"
 exit 33
fi

