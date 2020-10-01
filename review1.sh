#!/bin/bash -x

read -p "Enter the word: " word;

check="codinclub"

if [[ $word =~ $check ]]
then
	echo "The word matches with codinclub";
else
	echo "Doesnt match";
fi

