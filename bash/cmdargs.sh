#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
test1=0
test2=0
# loop through the command line arguments
while [ $# -gt 0 ]; do

  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"

  # tell the user how many things are left on the command line

  # TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
  #          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
  #          If the help option is recognized, print out help for the command and exit
  #          If the verbose option is recognized, set a variable to indicate verbose mode is on
  #          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
  #             display an error if the user gave the -d option without a single digit number after it
  #          Anything that wasn't recognized on the command line should still go into the myargs array


  ##########################################################
  # Task 1
  ###################################


  # recognizing the help option -h and the verbose mode -v
  case $1 in
      -h )
  # printing out help
      echo "-h for help"
      ;;
      -v )
  # printing out verbose
      echo "-v for verbose"
  # assigning test1 to a variable
      test1=1
      ;;
  # recognizing -d N for debug
      -d )
        case $2 in
          [1-6] )
          echo "-d for debug level $2"
  # assigning test2 to a variable
          test2=$2
          shift
          ;;
          *)
            echo "-d option is followed with a number[1-6]."
            shift
        esac
      ;;
      *)
  #displaying error message if the user gave the -d option without a single digit number
      error=$1
      echo "Invalid value $error"
      shift
      ;;
      esac


  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label

########################################
# Task 2 ######
###########

# telling the user if vebose is ON or OFF

if [ $test1 = 1 ]
then
  echo "verbose mode ON"

else
  echo "verbose mode OFF"
fi

# telling the user if dedug is ON Or OFF and the number its set to

if [ $test2 -gt 0 ]
then
  echo "debug mode ON"

else
  echo "debug mode OFF"
fi
