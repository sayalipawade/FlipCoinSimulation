#!/bin/bash -x
echo "Welcome"

#Flipping a coin and displaying head or tail"
coin=$((RANDOM%2))
if [[ $coin -eq 1 ]]
then
   echo "Tail"
else
   echo "Head"
fi
