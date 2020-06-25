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
usernam="$USER" #here we are using variable named environment  for getting an username.
hostname="$(hostname)" # here we are using variable named environment  forgetting a hostname.
day=$(date +%A) # here we are using a date command for exact day.
currenttime=$(date +%I:%M\ %p) #here we are using a date command exact date
###############
# Main        #
###############
# here we are using if else command for exact day and also printing a massage related to exact day.
if [ "$day" = Monday ];
then
csay="Welcome to planet $hostname, network associate $usernam!"
elif [ "$day" = Tuesday ];
then
csay="Welcome to planet $hostname, sadest person $usernam!"
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, director $usernam!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, scripting expert $usernam!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, android developer $usernam!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, innocent $usernam!"
else
csay="Welcome to planet $hostname, coww $usernam!"
fi
cowsay "$csay It is $currenttime on $day ."
