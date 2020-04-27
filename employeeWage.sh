#!/bin/bash -x

#CONSTANTS
IS_PART_TIME=2;
IS_FULL_TIME=1;
EMP_RATE_PER_HR=50;
MAX_HOURS_IN_MONTH=20;
NUM_WORKING_DAYS=10;

# VARIABLES
totalWorkingDays=0;
totalEmpHours=0;
totalWage=0;

# Array Declaration
declare -a dailyWage

	function getWorkingHours() {

		case $1 in
         $IS_FULL_TIME)
            empHours=8;
            ;;
         $IS_PART_TIME)
            empHours=4;
            ;;
         *)
            empHours=0;
            ;;
      esac
  		echo $empHours
	}

# To calculate  works Hours Daily

	function calcWorkHours {
		
		echo	$(( $1 * $EMP_RATE_PER_HR ));
	}

	while  [[ $totalWorkingDays -le $NUM_WORKING_DAYS ]] && [[ $totalEmpHours -lt $MAX_HOURS_IN_MONTH ]]
	do

		((totalWorkingDays++));
		randomCheck=$(( RANDOM%3 ));
      workHours="$( getWorkingHours $randomCheck )";
		totalEmpHours=$(( $totalEmpHours + $workHours ))
		dailyWage[$totalWorkingDays]="$( calcWorkHours $workHours)";
		
	done

totalWage=$(( $totalEmpHours * $EMP_RATE_PER_HR ));
echo "DailyWage=" ${dailyWage[@]};
