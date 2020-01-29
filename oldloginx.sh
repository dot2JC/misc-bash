#!/bin/bash

#Get a username and password, and validate its correct

#Make sure only two arguments are passed into the script

if [ ${#} -eq 2 ]
 then
  if [ ${2:1:1} = "x" ]
   then
#are you bob?
    if [ ${1} = "bob" ]
     then
#is your password correct?
      if [ ${2} = "bxpwob" ]
       then
        echo "Hello ${1}. You've been verified"
        exit 0
      else
        echo "Access Denied"
        echo "Exiting code 36"
        exit 36
      fi
#are you betty?
    elif [ ${1} = "betty" ]
     then
#is your password correct?
      if [ ${2} = "bxpwetty" ]
       then
        echo "Hello ${1}. You've been verified"
        exit 0
      else
       echo "Access Denied"
       echo "Exiting code 36"
       exit 36
      fi
#bad username
    else
     echo "Access Denied"
     echo "Exiting code 35"
     exit 35
    fi
  else
   echo "Access Denied"
   echo "Exiting code 34"
   exit 34
  fi
#if more or less arguments are passed
else
 echo "Usage error: Invalid args, got ${#}, expected 2"
 echo "Exiting code 33"
 exit 33
fi
