#!/bin/bash -x
declare -A coinStore ;
count1=0;
count2=0;
#There Are Dictionaries To Store  Combinations 1=Singlet 2=Doublet
declare -A coinStore1;
declare -A coinStore2;
declare -A coinStore3;
H=0;
T=0;
HH=0;
TT=0;
HT=0;
TH=0;
HHH=0;
HHT=0
HTH=0;
THH=0;
TTT=0;
TTH=0;
THT=0;
HTT=0;
#This Max Maintain Max Combination Occurance
max1=0;
max2=0;
max3=0;
#To Maintaining Winning Combination 2=Doulet 
maintainWin1=0;
maintainWin2=0;
maintainWin3=0;
flipUpto=31;

	for (( flipCount=1;flipCount<=20;flipCount++))
	for (( flipCount=1;flipCount<=flipUpto;flipCount++))
	do

		#For Singlet Combination
		flip=$(( RANDOM %2 ));

		if [ $flip -eq 1 ]
   	then
			((count1++));
			coinStore[$flipCount]="H";
			echo "Yeahhh Heads";
			((H++));
			if [[ $H -gt $max1 ]]
         then
            max1=$H;
            maintainWin1="H";
         fi
			coinStore1[$flipCount]="H";
		else
			((count2++))
			coinStore[$flipCount]="T";
			echo " Yeahhh Tails";
			((T++))
			if [[ $T -gt $max1 ]]
         then
            max1=$T;
            maintainWin1="T";
         fi
			coinStore1[$flipCount]="T";

		fi

		#For Doublet Combination
		flip=$((RANDOM%4));

		if [ $flip -eq 0 ]
		then
			((HH++));
			if [[ $HH -gt $max2 ]]
			then
				max2=$HH;
				maintainWin2="HH";
			fi
			coinStore2[$flipCount]="HH";

		elif [ $flip -eq 1 ]
      then
         ((TT++));
			 if [[ $TT -gt $max2 ]]
	       then
            max2=$TT;
			   maintainWin2="TT";
         fi
         coinStore2[$flipCount]="TT";			

		elif [ $flip -eq 2 ]
      then
         ((HT++));
			 if [[ $HT -gt $max2 ]]
          then
            max2=$HT;
			   maintainWin2="HT";
         fi 
         coinStore2[$flipCount]="HT";

		elif [ $flip -eq 3 ]
      then
         ((TH++)); 
			 if [[ $TH -gt $max2 ]]
          then
            max2=$TH;
				maintainWin2="TH";

         fi 
         coinStore2[$flipCount]="TH";
		fi

		#For Triplet Combination
		flip=$((RANDOM%8));

      if [ $flip -eq 0 ]
      then
         ((HHH++));
         if [[ $HHH -gt $max3 ]]
         then
            max3=$HHH;
            maintainWin3="HHH";
         fi
         coinStore3[$flipCount]="HHH";

      elif [ $flip -eq 1 ]
      then
         ((HHT++));
         if [[ $HHT -gt $max3 ]]
         then
            max3=$HHT;
            maintainWin3="HHT";
         fi
         coinStore3[$flipCount]="HHT";

      elif [ $flip -eq 2 ]
      then
         ((HTH++));
         if [[ $HTH -gt $max3 ]]
         then
            max3=$HTH;
            maintainWin3="HTH";
         fi
         coinStore3[$flipCount]="HTH";	

      elif [ $flip -eq 3 ]
      then
         ((THH++));
         if [[ $THH -gt $max3 ]]
         then
            max3=$THH;
            maintainWin3="THH";
         fi
         coinStore3[$flipCount]="THH";

      elif [ $flip -eq 4 ]
      then
         ((TTT++));
         if [[ $TTT -gt $max3 ]]
         then
            max3=$TTT;
            maintainWin3="TTT";
         fi
         coinStore3[$flipCount]="TTT";

      elif [ $flip -eq 5 ]
      then
         ((TTH++));
         if [[ $TTH -gt $max3 ]]
         then
            max3=$TTH;
            maintainWin3="TTH";
         fi
         coinStore3[$flipCount]="TTH";

      elif [ $flip -eq 6 ]
      then
         ((THT++));
         if [[ $THT -gt $max3 ]]
         then
            max3=$THT;
            maintainWin3="THT";
         fi
         coinStore3[$flipCount]="THT";	

		flip=$((RANDOM%4));

      elif [ $flip -eq 7 ]
      then
         ((HTT++));
         if [[ $HTT -gt $max3 ]]
         then
            max3=$HTT;
            maintainWin3="HTT";
         fi
         coinStore3[$flipCount]="HTT";


		fi;

	done

echo "echo"  ${coinStore[@]};


printf "\n\n\n";
echo "SINGLET COMBINATION="  ${coinStore1[@]};
printf "\n\n\n";
echo "DOUBLET COMBINATION"  ${coinStore2[@]};
printf "\n\n\n";
echo "TRIPLET COMBINATION"  ${coinStore3[@]};

# WINNING COMBINATIONS 

printf "\n\n\n";
ans1=$(( echo " $max1 / $flipUpto" | bc -l ) );
singletPer=$(( echo "$ans1*100" | bc -l ) );
echo "Winning Combination In SINGLET===" "**" $maintainWin1 "**" "Percentage===" $singletPer;
printf "\n\n\n";
ans2=$(( echo " $max2 / $flipUpto" | bc -l ) );
doubletPer=$(( echo "; $ans2*100" | bc -l ) );
echo "Winning Combination In DOUBLET===" "**" $maintainWin2 "**" "Percentage==="  $doubletPer;
printf "\n\n\n";
ans3=$(( echo " $max3 / $flipUpto" | bc -l ) );
tripletPer=$(( echo "; $ans3*100" | bc -l ) );
echo "Winning Combination In TRIPLET===" "**" $maintainWin3 "**" "Percentage===" $tripletPer;
