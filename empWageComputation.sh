#!/bin/bash -x

EMP_RATE_PER_HR=20
WORKING_DAYS=20
FULL_TIME=1
PART_TIME=2
MAX_HRS_IN_MONTH=100

totalWorkingHrs=0
totalWorkingDays=0
total_Salary=0


function work_Hours()
{
case $1 in 
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
echo $empHrs
}

function emp_Wage()
{
	 empHrs=$1
	echo $(($empHrs*$EMP_RATE_PER_HR))

}


while [[ $totalWorkingHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $WORKING_DAYS ]]
do
		((totalWorkingDays++))
		empCheck=$((RANDOM%3))
		empHrs=$( work_Hours $empCheck )
		totalWorkingHrs=$(( $totalWorkingHrs+$empHrs ))
		dailyWage[$totalWorkingDays]=$( emp_Wage $empHrs)
done

total_Salary=$(($totalWorkingHrs*$EMP_RATE_PER_HR))

echo "Total working hours:" $totalWorkingHrs

echo "Daily wage is: ${dailyWage[@]}"
echo "Total salary for 20 days :" $total_Salary
