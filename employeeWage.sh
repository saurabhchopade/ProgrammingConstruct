#!/bin/bash -x

isPartTiem=2;
isFullTime=1;
empRatePerHr=50;
randomCheck=$((RANDOM%3));

	if [[ $isFullTime -eq $randomCheck ]]
	then

		empHours=8;

	elif [[ $isPartTime -eq $randomCheck ]]
	then

		empHours=4;

	else

		empHours=0;

	fi;

salary=$(( $empHours*$empRatePerHr ));
echo "Salary=" $salary;
