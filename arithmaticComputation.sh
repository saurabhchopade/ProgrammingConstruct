#!/bin/bash -x
#1)Compute a + b * c
#2)Compute a * b + c
#3)Compute c + a / b
#4)Compute a % b + c
#5)Store Result in Dictionary
#6)StoreResult in Dict to Array
#7)Descending Order Of Array
#8)Assending Order Of Array
counter=0;
declare -A dictStorage
declare -A dictStorage;
declare -a arrayStorage;
read -p "Enter First Number=" a;
read -p "Enter Second Number=" b;
read -p "Enter Third Number=" c;

	function myDescendingsort() {
		for (( index1=1; index1<10; index1++ ))
		do
      
			for (( index2=index1;index2<=10;index2++  ))
			do
				if [[ ${arrayStorage[index2]} > ${arrayStorage[index1]} ]]
				then
					temp=${arrayStorage[index1]};
					arrayStorage[((index1))]=${arrayStorage[index2]};
					arrayStorage[((index2))]=$temp;

				fi;	
			done;
		done;
	}
	function firstOperation(){
		#For Bc Perpose We are added Result variable
		result=$(($1 + $2 ));
		finalResult=$(($result*$3 ));
		echo $finalResult;
	}
	function secondOperation(){
     	result=$(($1 * $2 ) );
      finalResult=$(( $result+$3));
      echo $finalResult;
   }
	function thirdOperation(){
      result=$(($3 + $1 ));
      finalResult=$(( $result/$2));
      echo $finalResult;
   }
	function fourthOperation(){
      result=$(($1 % $2));
      finalResult=$(( $result+$3));
      echo $finalResult;
   }

	for (( index=1; index<=10; index++ ));
	do
		output=0;
		printf "\n\n\n"
		echo "1)Compute a + b * c";
		echo "2)Compute a * b + c";
		echo "3)Compute a + b / c";
		echo "4)Compute a % b + c";
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
		
		#Dictionary to array
		dictStorage[$index]=$output;
		arrayStorage[(($index))]="$dictStorage[$index]=$output";				
		printf "\n\n\n";
		read -p "PRESS Continue=(y) Cancel=(n)" check;
			

			if [[ $check == "n" ]];
			then
				printf "\n\n\n"
				echo "Dictionary elements="	${dictStorage[@]};
				echo "Array elements="   ${arrayStorage[@]};
				myDescendingsort $arrayStorage;
				echo "Descending Sorted=" ${arrayStorage[@]};
				exit 1;
			fi;
	done;
