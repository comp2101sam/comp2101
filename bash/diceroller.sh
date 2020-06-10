#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
# roll the dice 6 times to display samuel
echo "
Rolling...
$(( RANDOM % 6 + 1))-s
$(( RANDOM % 6 + 1))-a
$(( RANDOM % 6 + 1))-m
$(( RANDOM % 6 + 1))-u
$(( RANDOM % 6 + 1))-e
$(( RANDOM % 6 + 1))-l
"
