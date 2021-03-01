#!/bin/bash -x

EMP_RATE_PER_HR=20
FULL_TIME=10
PART_TIME=8

empCheck=$((RANDOM%2))
isPresent=1


if [ $empCheck -eq $isPresent ]
then
	salary=$(($EMP_RATE_PER_HR*$FULL_TIME))
	echo $salary
else
	salary=$(($EMP_RATE_PER_HR*$PART_TIME))
	echo $salary
fi
