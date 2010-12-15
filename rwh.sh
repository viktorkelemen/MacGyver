#!/bin/bash
# Removes whitespace from the file endings

if [ -z "$1" ]
	then
		echo "usage: rwh.sh file"
else
		sed -i '' -e's/[ \t]*$//' $1
fi