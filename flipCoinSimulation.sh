echo "Welcome"
coin=$((RANDOM%2))
if [[ $coin -eq 1 ]]
then
	echo "Tail"
else
	echo "Head"
fi
