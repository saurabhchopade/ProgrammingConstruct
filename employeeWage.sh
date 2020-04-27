#!/bin/bash -x

isPartTime=2;
isFullTime=1;
empRatePerHr=50;
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
echo "Salary=" $salary;
