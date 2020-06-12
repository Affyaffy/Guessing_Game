#!/usr/bin/env bash

echo "Welcome to Guessing game"

function guessed {
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
	guessed
done

echo "Congratulations! You have guessed the number of file correctly. Here is the number of files:"
echo "---" && ls -1
