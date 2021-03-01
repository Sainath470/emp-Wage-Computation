#!/bin/bash -x

EMP_RATE_PER_HR=20
WORKING_DAYS=20
FULL_TIME=1
PART_TIME=2
MAX_HRS_IN_MONTH=100
totalWorkingHrs=0
totalWorkingDays=0
total_Salary=0
while [[ $totalWorkingHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
case $empCheck in 
	$FULL_TIME)
		empHrs=12
		;;
	$PART_TIME)
		empHrs=8
		;;
		*)
		empHrs=0
		;;
esac
totalWorkingHrs=$(( $totalWorkingHrs+$empHrs ))
done
total_Salary=$(($totalWorkingHrs*$EMP_RATE_PER_HR))

echo "total working hours:" $totalWorkingHrs
echo "Total salary for 20 days :" $total_Salary
