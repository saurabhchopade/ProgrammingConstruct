#!/bin/bash -x
#1)Compute a + b * c
#2)Compute a * b + c
#3)Compute c + a / b
#4)Compute a % b + c
#5)Store Result in Dictionary
#6)StoreResult in Dict to Array
#7)Descending Order Of Array
#8)Assending Order Of Array
read -p "Enter First Number=" a;
read -p "Enter Second Number=" b;
read -p "Enter Third Number=" c;
	function firstOperation(){

		#For Bc Perpose We are added Result variable
		result=$((echo "$1 + $2" | bc -l ) );
		finalResult=$(( echo "$result*$3" | bc -l ) );
		echo $finalResult;
	}
	function secondOperation(){

     	result=$((echo "$1 * $2" | bc -l ) );
      finalResult=$(( echo "$result+$3" | bc -l ) );
      echo $finalResult;
   }
	function thirdOperation(){

      result=$((echo "$3 + $1" | bc -l ) );
      finalResult=$(( echo "$result/$2" | bc -l ) );
      echo $finalResult;
   }
	function fourthOperation(){

      result=$((echo "$1 % $2" | bc -l ) );
      finalResult=$(( echo "$result+$3" | bc -l ) );
      echo $finalResult;
   }
	for (( index=1; index<=10; index++ ));
	do

		printf "\n\n\n"
		echo "1)Compute a + b * c";
		echo "2)Compute a * b + c";
		echo "2)Compute a + b / c";
		echo "3)Compute a + b / c";
		echo "4)Compute a % b + c"
		read -p "Enter Option" option;

		case $option in
			1) 
				output=$( firstOperation $a $b $c );
				echo $output;
				;;
			2)
				output=$( secondOperation $a $b $c );
		      echo $output;
				;;
			3)
         	output=$( thirdOperation $a $b $c );
            echo $output;
            ;;
			4)
            output=$( fourthOperation $a $b $c );
            echo $output;
            ;;
			*)
				printf "\n\n\n"
				echo "Enter Right Option";
				;;
		esac

		printf "\n\n\n";
		read -p "PRESS Continue=(y) Cancel=(n)" check;

			if [[ $check == "n" ]];
			then
				exit 1;
			fi;

	done;