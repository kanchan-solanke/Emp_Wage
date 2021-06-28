#! /bin/bash -x
IS_PRESENT_FULL_TIME=2
IS_PRESENT_PART_TIME=1
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
totalSalary=0

for((day=1; day<=$MAX_WORKING_DAYS; day++))
do 
empCheck=$((RANDOM%3))

case $empCheck in
    $IS_PRESENT_FULL_TIME) empHrs=8
;;
$IS_PRESENT_PART_TIME) empHrs=4
;;
*) empHrs=0
;;
esac
totalSalary=$(( $empHrs - $EMP_RATE_PER_HR ))
salary=$(( empHrs * EMP_RATE_PER_HR ))
done
