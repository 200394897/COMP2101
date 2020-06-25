#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

login="Login Successful."
nop="Username Or Password is Incorrect.."
referenceString="Password" #here storing password into variable named referenceString .
read -s -p "Give login input:" myString #here, using myString for saving password and getting an input from user.
echo
#here,  using the $referenceString for checking that input is valid or not .
if [ $myString = $referenceString ]; then
  echo "$login"
  echo
else
  echo "$nop"
  read -s -p "Give login input:" myString
  if [ $myString = $referenceString ]; then
    echo "$login"
    echo
  else
    echo
    echo "$nop"
    read -s -p "Give login input:" myString
  if [ $myString = $referenceString ]; then
    echo "$login"
    echo
  else
    echo
    echo "$nop"
    read -s -p "Give login input:" myString
  if [ $myString = $referenceString ]; then
    echo "$login"
    echo
  else
    echo
    echo "$nop"
    read -s -p "Give login input:" myString
  if [ $myString = $referenceString ]; then
    echo "$login"
    echo
  else
    echo
    echo "$nop Better Luck next time."
fi
fi
fi
fi
fi
