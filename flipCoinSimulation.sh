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

#flipping a coin and store the doublet combination
HH=0
TT=0
HT=0
TH=0
for (( i=0;i<10;i++))
do
	coin1=$((RANDOM%2))
	coin2=$((RANDOM%2))
   if [[ $coin1 -eq 0 &&  $coin2 -eq 0 ]]
	then
		((HH++))
	elif [[ $coin1 -eq 1 && $coin2 -eq 1 ]]
	then
		((TT++))
	elif [[ $coin1 -eq 0 && $coin2 -eq 1 ]]
	then
		((HT++))
	elif [[ $coin1 -eq 1 && $coin2 -eq 0 ]]
	then
		((TH++))
	fi
done
dictionary[0]=$HH
dictionary[1]=$TT
dictionary[2]=$HT
dictionary[3]=$TH
echo "${!dictionary[@]}"
echo "${dictionary[@]}"

#calculating the percentage of doublet combination and storing the result
percentage1=$((($HH*100)/10))
percentage2=$((($TT*100)/10))
percentage3=$((($HT*100)/10))
percentage4=$((($TH*100)/10))

dictionary[0]=$percentage1
dictionary[1]=$percentage2
dictionary[2]=$percentage3		
dictionary[3]=$percentage4
echo "${!dictionary[@]}"
echo "${dictionary[@]}"
		
				





	
		



