#!/usr/bin/env bash

echo "Welcome to Guessing game"

function ask {
	echo "Please guess the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Congratulations! You have guessd the number of file correctly. Here is the number of files:"
echo "---" && ls -1
