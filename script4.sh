#!/bin/bash

if [ $# -eq 3 ];
 then
  if (( $1 % 2 ))
   then
    firstnum=odd
    let "a = $2 + $3"
    echo "The $# numbers are $1, $2, and $3"
    echo "The first number is $firstnum"
    echo "The sum of $2 and $3 is $a"
  else
    firstnum=even
    let "a = $2 * $3"
    echo "The $# numbers are $1, $2, and $3"
    echo "The first number is $firstnum"
    echo "The product of $2 and $3 is $a"
  fi
else
 echo "Usage error expected 3 numbers, got $#"
 echo "Exiting, code 33"
 exit 33
fi
