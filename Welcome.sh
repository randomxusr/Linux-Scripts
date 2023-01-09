#!/bin/bash

#This is a Welcome script designed to provide some using system information to users.
# Author: randomxusr

#Display a Welcome message to the user

echo "**************************************************Welcome $(whoami)************************************************************************"

#output the date
echo "The date is: $(date +"%a %B %d")"

#outpuut the Time
echo "Local time is: $(date +"%r")"

echo \

#output the uptime
echo "The system has been running for: " 
uptime -p | cut --complement -b 1-3

echo \

#output the logged in user info
w

echo \

#output the last few logins
last -n 5

echo  \

#add some info about disk space.
#Set some variables for Used and Total Disk Space

Used="$(df -h --output=used /dev/sdg3 | grep G)"
Total="$(df -h --output=size /dev/sdg3 | grep G)"

#Memory Variables

used=$(free -m | sed -n '2p' | awk '{print $3}')
free=$(free -m | sed -n '2p' | awk '{print $4}')


#Print a message about Ram and Disk space usage
echo Disk and RAM usage: 
echo \

# Display the Used and Total Disk Space and Ram
echo Used/Total Disk space:  $Used / $Total
echo "Used/Free Memory: $((used/1024)) GB / $((free/1024)) GB"

echo \


#Output the 10 Highest usage processes from Top
top -b -e g -n 1 | sed -n 1,17p

