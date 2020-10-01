#!/bin/bash -x

declare -A DiceAssArray
DiceAssArray=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0);

while [ True ]
do

        ran=$((RANDOM%6+1));
        ((DiceAssArray[$ran]++));

        if [ "${DiceAssArray[$ran]}" -eq 10 ]
        then
                large=$ran;
                break
        fi

done

for key in "${!DiceAssArray[@]}"
do
        echo "$key occurs - ${DiceAssArray[$key]}";
done
