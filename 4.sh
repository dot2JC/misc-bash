#!/bin/bash

#call another script to run and get its exit code
#take exit code and print the correct info

c=$(1.sh "$@")
a=$?

if [ $a -eq 0 ]
 then
  echo "loginx.sh executed and returned with exit code $a"
  echo "Successful Login" 
  exit 0 
elif [ $a -eq 33 ]
 then
  echo "loginx.sh executed and returned with exit code $a"
  echo "Invalid number of args"
  exit 33
elif [ $a -eq 34 ]
 then
  echo "loginx.sh executed and returned with exit code $a"
  echo "Invalid password format"
  exit 34
elif [ $a -eq 35 ]
 then
  echo "loginx.sh executed and returned with exit code $a"
  echo "Invalid username"
  exit 35
elif [ $a -eq 36 ]
 then
  echo "loginx.sh executed and returned with exit code $a"
  echo "Invalid password"
  exit 36
else
  echo "loginx.sh executed and returned with exit code $a"
  echo "That exit code is not in my list."
  exit 37
fi

