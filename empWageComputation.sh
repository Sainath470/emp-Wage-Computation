#!/bin/bash -x

EMP_RATE_PER_HR=20
WORKING_DAYS=20
FULL_TIME=1
PART_TIME=2
total_Salary=0

for((D=1;D<=WORKING_DAYS;D++))
do
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
salary=$(( $empHrs*$EMP_RATE_PER_HR ))
total_Salary=$(($total_Salary+$salary))
done

echo "Salary per day:" $salary
echo "Salary per month that is 20 working days:" $total_Salary
