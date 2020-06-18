#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Insert a number 1? " firstnumber
read -p "Insert a number 2? " secondnumber #got three user numbers input by using read command.
read -p "Insert a number 3? " thirdnumber
sum=$((firstnumber + secondnumber + thirdnumber)) # addition of 3 numbers in this variable
product=$((firstnumber * secondnumber * thirdnumber))  # Adding the product of the 3 numbers into variable

cat <<EOF
The sum of $firstnumber , $secondnumber and $thirdnumber numbers is $sum	
The product of $firstnumber , $secondnumber and $thirdnumber numbers is $product
EOF
