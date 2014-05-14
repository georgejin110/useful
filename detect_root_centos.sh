#/bin/bash

#This small script is for centos 5/6.
printf:"This script automatically detects your root privilages.
#####################################################################
###############AUTHOR: ALEX FANG ####################################
###############CONTACT: FRJALEX@GMAIL.COM############################
###############VER 1.0, RELEASED UNDER GPL V2.O######################
###############TWITTER: @AFANG01#####################################"

if [ $(id -u) != "0" ]; then
    printf "The current user has no root privilages\n"
    exit 1
    
if [ $(id -u) != "1" ]; then
    printf "Good! Your user account has full root privilage!\n"
    exit 1
