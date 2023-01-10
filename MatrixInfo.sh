#!/bin/bash

##Run Neo-Matrix
timeout --foreground 24 neo-matrix -m "Welcome to $(hostname)"

#sleep
sleep 4

$clear the screen
clear

#Sleep some more
sleep 2

#Print the hostname
HostName=$(hostname)
echo "     Your system's hostname is: $HostName"

#Print the Kernel version info
echo "     $(uname -srm)"

##Print the Public IP
PUBLIC_IP=$(curl -s http://checkip.dyndns.org | grep -Eo '([0-9]*\.){3}[0-9]*')
echo "     Your Public IP is: $PUBLIC_IP"

##Print the private IP
PrivateIP=$(hostname -i)
echo "     Your Private IP is: $PrivateIP"


echo \

sleep 2

#Print some system info
hostnamectl
