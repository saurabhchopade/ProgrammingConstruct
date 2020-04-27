#!/bin/bash -x
#HERE 50% POSSIBLITIES OF GETTING NUMBER LESS THAN 5 OR GREATER THAN 5
count1=0;
count2=0;
	for ((  flipCoin=0 ; flipCoin<=50 ;flipCoin++ ))
	do
	flip=$(( RANDOM %10 ));
		if [ $flip -ge 5 ]
   	then
			echo "Coin is Fliipping in the Air"; 
			sleep 1;
			echo "Yeahhh Heads";
			#sleep 1;
			((count1++));

			if [[ $count1 -eq 21 ]]
			then
    		 let  ans=$(( $count1 - $count2 ));
				echo "Head Wins by" $ans;
				exit 1;
			fi;

		else
			echo "Coin is Fliipping in the Air";
			sleep 1;
			echo " Yeahhh Tails";
			#sleep 1;
			((count2++))
			if [[ $count2 -eq 21 ]]
         then
			let	ans=$(( $count2 - $count1 ));
            echo "Tails win  by" $ans;
            exit 1;
         fi;
		fi
	done

echo "Head Won Times" $count1;
echo "Tail Won Times" $count2;
