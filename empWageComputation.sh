#!/bin/bash -x

EMP_RATE_PER_HR=20
FULL_TIME=8
PART_TIME=4

empCheck=$((RANDOM%2))
isPresent=1


if [ $empCheck -eq $isPresent ]
then
	salary=$(($EMP_RATE_PER_HR*$FULL_TIME))
	echo $salary
else
	salary=0
	echo $salary
fi
