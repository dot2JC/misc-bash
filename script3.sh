#!/bin/bash
if [ $# -eq 3 ];
 then
#Check if the biggest and smallest are even/odd
 if (( $1 % 2 ))
  then
   onecheck=odd
 else
   onecheck=even
 fi
 if (( $2 % 2 ))
  then
   twocheck=odd
 else
   twocheck=even
 fi
 if (( $3 % 2 ))
  then
   threecheck=odd
 else
   threecheck=even
 fi
 echo "The $# numbers are $1, $2, and $3"
 echo "The number $1 is $onecheck"
 echo "The number $2 is $twocheck"
 echo "The number $3 is $threecheck"
else
 echo "Usage error expected 3 numbers, got $#"
 echo "Exiting, code 33"
 exit 33
fi
