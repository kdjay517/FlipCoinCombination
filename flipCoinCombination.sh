#!/bin/bash -x

HH=0;
HT=0;
TH=0;
TT=0;

declare -A doublet_dictionary
declare -A Percentage
for ((i=1; i<=10; i++))
do
	coin1=$((RANDOM%2))
	coin2=$((RANDOM%2))
	if [ $coin1 -eq 1 -a $coin2 -eq 1 ]
	then
		((HH++))
		doublet_dictionary[$i]="HH"
	elif [ $coin1 -eq 1 -a $coin2 -eq 0 ]
	then
		((HT++))
		doublet_dictionary[$i]="HT"
	elif [ $coin1 -eq 0 -a $coin2 -eq 1 ]
	then
		((TH++))
		doublet_dictionary[$i]="TH"
	else
		((TT++))
		doublet_dictionary[$i]="TT"
	fi
done

echo "HH percentage-" $(($HH*10))
echo "HT percentage-" $(($HT*10))
echo "TH percentage-" $(($TH*10))
echo "TT pecentage-" $(($TT*10))


percentage[HH]=$(($HH*10))
percentage[HT]=$(($HT*10))
percentage[TH]=$(($TH*10))
percentage[TT]=$(($TT*10))
echo "doublet_dictionary:" ${doublet_dictionary[@]}


