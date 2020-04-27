#!/bin/bash -x

isPartTime=2;
isFullTime=1;
empRatePerHr=50;
workingDays=30;
totalSalary=0;

	for ((day=1; day<=30;day++ ))
	do
		randomCheck=$(( RANDOM%3 ));

		case $randomCheck in

			$isFullTime)
				empHours=8;
	         ;;
			$isPartTime)

				empHours=4;
				;;
			*)
				empHours=0;
				;;

		esac

		salary=$(( $empHours*$empRatePerHr ));
		totalSalary=$(( $totalSalary+$salary ));

	done

echo "Total sallary=" $totalSalary;
