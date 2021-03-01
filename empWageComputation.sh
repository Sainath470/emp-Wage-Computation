#!/bin/bash -x

EMP_RATE_PER_HR=20
FULL_TIME=10
PART_TIME=8

empCheck=$((RANDOM%2))
isPresent=1


case $empCheck in 
	1)
	salary=$(($EMP_RATE_PER_HR*$FULL_TIME))
	echo $salary
	;;
	0)
	salary=$(($EMP_RATE_PER_HR*$PART_TIME))
	echo $salary
	;;
esac
