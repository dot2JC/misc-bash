#!/bin/bash

echo "Please type a word!"
read a

echo "The first character of $a is ${a:0:1}"
echo "The fourth character of $a is ${a:3:1}"


