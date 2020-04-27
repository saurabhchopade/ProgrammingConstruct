#!/bin/bash -x
#HERE 50% POSSIBLITIES OF GETTING NUMBER LESS THAN 5 OR GREATER THAN 5
flip=$(( RANDOM %10 ));
count1=0;
count2=0;

	if [ $flip -ge 5 ]
   then
		echo "Coin is Fliipping in the Air"; 
		sleep 3;
		echo "Yeahhh Heads";
	else
		echo "Coin is Fliipping in the Air";
		sleep 3;
		echo " Yeahhh Tails";
	fi

	for ((  flipCoin=0 ; flipCoin<=10 ;flipCoin++ ))
	do

	flip=$(( RANDOM %10 ));
		if [ $flip -ge 5 ]
   	then
			echo "Coin is Fliipping in the Air"; 
			sleep 1;
			echo "Yeahhh Heads";
			((count1++));
		else
			echo "Coin is Fliipping in the Air";
			sleep 1;
			echo " Yeahhh Tails";
			((count2++))
		fi
	done

echo "Head Won Times" $count1;
echo "Tail Won Times" $count2;
