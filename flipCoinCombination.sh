#!/bin/bash -x
declare -A coinStore ;
count1=0;
count2=0;

	for (( flipCount=1;flipCount<=20;flipCount++))
	do

		flip=$(( RANDOM %2 ));

		if [ $flip -eq 1 ]
   	then
			((count1++));
			coinStore[$flipCount]="H";
			echo "Yeahhh Heads";
		else
			((count2++))
			coinStore[$flipCount]="T";
			echo " Yeahhh Tails";
		fi

	done

echo "echo"  ${coinStore[@]};
