#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
#using the variable $USER to get user name
#echo 'enter your name'
#read USER
# assigning the user name
USER=samuel
# generating Dynamically the value for my hostname
hostname=$(hostname)
# adding time and day of the week to the welcome message
date=$( date +"%I:%M:%S %p")
# where %I == hour, %M==munites,%S==second %p==am/pm
day=$( date +%A)
#where %A==day
# putting in some conditions as to what to display for which day of the week
if [ $day == 'Monday' ]
then
  title='Monday is good'
elif [ $day == 'Tuesday' ]
then
  title='Tuesday will not be ok'
elif [ $day == 'Wednesday' ]
then
  title='Wednesday is full of appointments'
elif [ $day == 'Thursday' ]
then
  title='Thursday is busy'
elif [ $day == 'Friday' ]
then
  title='Friday you can come at any time'
elif [ $day == 'Saturday' ]
then
  title="it's weekend"
else
  title="it's weekend"

fi






###############
# Main        #
###############
# assigning the output to a virable login

login="Welcome to planet $hostname, $title $USER!
it is $day at $date."
# displaying the out
echo $login
