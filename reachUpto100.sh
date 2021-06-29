#!/bin/bash

echo "Welcome to Employeee Wage Computation Program"

numberOfWorkingDays=20
isPartTime=1
isFullTime=2
wage_per_hour=20
totalHours=0
hoursDone=0
for (( day=1; day <= numberOfWorkingDays; day++ ))
do
	emp=$RANDOM
	empCheck=$((emp%3))
	case $empCheck in
		$isFullTime)
			echo "Employee $emp is FullTime"
			empHrs=8
			;;
		$isPartTime)
			echo "Employee $emp is PartTime"
			empHrs=4
			;;
		*)
			echo "Not an employee"
			;;
	esac


	if [ $((totalHours + empHrs)) -lt 100 ]
	then
		salary=$((wage_per_hour * empHrs))
		totalSalary=$((totalSalary + salary))
		totalHours=$((totalHours + empHrs))
		echo "DAY - $day;  DailyWage - $salary, TotalWageTillNow - $totalSalary"
	else
		diff=$((100 - totalHours))
		salary=$((wage_per_hour * diff))
		totalSalary=$((totalSalary + salary))
		echo "DAY - $day;  DailyWage - $salary, TotalWageTillNow - $totalSalary"
		echo "100 Hours done"
		hoursDone=1
		break
	fi
done

if [ $hoursDone -eq 0 ]
then
	echo "20 days done"
fi
