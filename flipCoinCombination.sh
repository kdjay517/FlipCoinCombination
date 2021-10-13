#!/bin/bash -x


coin=$((RANDOM%2))

if [ $coin -eq 1 ]
then
	echo "Head"
else
	echo "Tail"
fi


H=0;
T=0;

HH=0;
HT=0;
TH=0;
TT=0;

HHH=0
HHT=0
HTH=0
TTT=0
HTT=0
THH=0
THT=0
TTH=0



declare -A singlet_dictionary;
declare -A doublet_dictionary
declare -A tripplet_dictionary
declare -A percentage


for ((i=1; i<=10; i++))
do
	coin=$((RANDOM%2))
	if [ $coin -eq 1 ]
	then
		singlet_dictionary[$i]="H"
		((H++))
	else
		singlet_dictionary[$i]="T"
		((T++))
	fi
done

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
        elif [ $coin1 -eq 0 -a $coin2 -eq 0 ]
        then
                ((TT++))
                doublet_dictionary[$i]="TT"
	fi
done



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

echo "Heads percentage-" $(($H*10))
echo "Tails percentage-" $(($T*10))
echo "singlet output is" ${singlet_dictionary[@]}
percentage[H]=$(($H*10))
percentage[T]=$(($T*10))


echo "HH percentage-" $(($HH*10))
echo "HT percentage-" $(($HT*10))
echo "TH percentage-" $(($TH*10))
echo "TT pecentage-" $(($TT*10))


percentage[HH]=$(($HH*10))
percentage[HT]=$(($HT*10))
percentage[TH]=$(($TH*10))
percentage[TT]=$(($TT*10))

echo "doublet_dictionary:" ${doublet_dictionary[@]}

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

echo "tripplet_dictionary:" ${tripplet_dictionary[@]}
echo "percentage output "${percentage[@]}







