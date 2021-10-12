x#!/bin/bash -x


declare -A singlet_dictionary;
declare -A singlet_percentage;

for ((i=1; i<=10; i++))
do
	coin=$((RANDOM%2))
	if [ $coin -eq 1 ]
	then
		singlet_dictionary[$i]="H"
		((headCount++))
	else
		singlet_dictionary[$i]="T"
		((tailCount++))
	fi
done

echo "Heads percentage-" $(($headCount*10))
echo "Tails percentage-" $(($tailCount*10))
echo "singlet output is" ${singlet_dictionary[@]}



