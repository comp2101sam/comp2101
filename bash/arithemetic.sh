#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

# asking the user for 3 numbers
echo 'please input first number'
read firstnum
echo 'please input second number'
read secondnum
echo 'please input third number'
read thirdnum
# changing the output to show sum of the number
sum=$((firstnum + secondnum + thirdnum))
# changing the output to show productof the number
product=$((firstnum * secondnum * thirdnum))
divided=$((firstnum / secondnum))

fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
# display output with message
cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum multiplied by $secondnum multiplied by $thirdnum is $product
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF
