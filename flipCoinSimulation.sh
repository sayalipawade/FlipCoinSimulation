#!/bin/bash -x
declare -A dictionary
echo "Welcome"

#flipping a coin and store the singlet combination in dictionary
for (( i=0;i<10;i++))
do
	coin=$((RANDOM%2))
	if [[ $coin -eq 1 ]]
	then
		tail=$((tail+1))
	else
		head=$((head+1))
	fi
done
dictionary[0]=$head
dictionary[1]=$tail
echo "${!dictionary[@]}"
echo "${dictionary[@]}"

#calculating the percentage of singlet combination
percentage1=$((($head*100)/10))

percentage2=$((($tail*100)/10))



