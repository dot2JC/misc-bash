#!/bin/bash

if [ $# -eq 3 ];
 then
  let "a = $1 + $2 + $3"
  echo "$1"
  echo "$2"
  echo "$3"
  echo "$a"
else
 echo "Usage error expected 3 numbers, got $#"
 echo "Exiting, code 33"
 exit 33
fi
 
