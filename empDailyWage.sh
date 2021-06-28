#! /bin/bash -x

# constant
IS_PRESENT_FULL_TIME=1
EMP_RATE_PER_HR=20
#variable
empCheck=$((RANDOM%2))

if [ $empCheck -eq $IS_PRESENT_FULL_TIME ]
then
        empHrs=8
else
         empHrs=0
fi
salary=$(( empHrs * EMP_RATE_PER_HR ))
