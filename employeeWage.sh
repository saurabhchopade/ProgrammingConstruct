#!/bin/bash -x

isPresent=1;
randomCheck=$((RANDOM%2));

	if [[ $randomCheck -eq 1 ]]
	then

		echo "Employee is Present";
		empRatePerHr=50;
		empHours=8;
		salary=$(($empRatePerHr*empHours));
		
	else

		echo "Employee is Absent";
		salary=0;

	fi

	echo "Sallary=" $salary;
