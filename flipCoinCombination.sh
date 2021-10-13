#!/bin/bash -x

HHH=0
HHT=0
HTH=0
TTT=0
HTT=0
THH=0
THT=0
TTH=0

declare -A tripplet_dictionary
declare -A percentage

for ((i=1; i<=10; i++))
do
	coin1=$((RANDOM%2))
	coin2=$((RANDOM%2))
	coin3=$((RANDOM%2))
	if [ $coin1 -eq 1 -a $coin2 -eq 1 -a $coin3 -eq 1 ]
	then
		((HHH++))
		tripplet_dictionary[$i]="HHH"
	elif [ $coin1 -eq 1 -a $coin2 -eq 1 -a $coin3 -eq 0 ]
	then
		((HHT++))
		tripplet_dictionary[$i]="HHT"
	elif [ $coin1 -eq 1 -a $coin2 -eq 0 -a $coin3 -eq 1 ]
	then
		((HTH++))
		tripplet_dictionary[$i]="HTH"
	elif [ $coin1 -eq 0 -a $coin2 -eq 0 -a $coin3 -eq 0 ]
        then
                ((TTT++))
                tripplet_dictionary[$i]="TTT"
	elif [ $coin1 -eq 1 -a $coin2 -eq 0 -a $coin3 -eq 0 ]
        then
                ((HTT++))
                tripplet_dictionary[$i]="HTT"
	elif [ $coin1 -eq 0 -a $coin2 -eq 1 -a $coin3 -eq 1 ]
        then
                ((THH++))
                tripplet_dictionary[$i]="THH"
	elif [ $coin1 -eq 0 -a $coin2 -eq 1 -a $coin3 -eq 0 ]
        then
                ((THT++))
                tripplet_dictionary[$i]="THT"
	else [ $coin1 -eq 0 -a $coin2 -eq 0 -a $coin3 -eq 1 ]
                ((TTH++))
                tripplet_dictionary[$i]="TTH"

	fi

done


echo "HHH Percentage -"$(($HHH*10))
echo "HHT Percentage -"$(($HHT*10))
echo "HTH Percentage -"$(($HTH*10))
echo "HTT Percentage -"$(($HTT*10))
echo "THH Percentage -"$(($THH*10))
echo "THT Percentage -"$(($THT*10))
echo "TTH Percentage -"$(($TTH*10))
echo "TTT Percentage -"$(($TTT*10))



percentage[HHH]=$(($HHH*10))
percentage[HHT]=$(($HHT*10))
percentage[HTH]=$(($HTH*10))
percentage[HTT]=$(($HTT*10))
percentage[THH]=$(($THH*10))
percentage[THT]=$(($THT*10))
percentage[TTH]=$(($TTH*10))
percentage[TTT]=$(($TTT*10))

echo "percentage output "${percentage[@]}






