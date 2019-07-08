#!/bin/bash


firstline="Hello and welcome to the script,
This script allows users to make there own customized wordlists, I have created this script so that one doesn't has to remember the commands used in CRUNCH. Basically i too use crunch to create wordlists but this script just saves your time in looking at the tags and does everything on its own. So why don't you give it a try......

         //////     CRUNCH CUSTOMIZED  ///////
       ///                                  ///
     ///                                     /// 


                                                          __Script by Gaurav Goyal 
"

echo $firstline

echo "Enter the min number of digits/alphabets"
read min
echo "Enter the max number of digits/alphabets"
read max
echo "Do you want to enter a charset(n/y)"
read choice1
if [ "$choice1"=="y" ] || [ "$choice1"=="Y"] ; then
   echo "Enter the charset"
   read  charset
   echo $charset  # This line is to be deleted in the final version
   crunch $min $max $charset
else
   crunch $min $max
fi

#crunch $min $max 

#read char
#echo $char

#if[$char -eq "NULL" ]; then
#   echo "Enter was pressed"
#else
#  crunch $min $max $char
#fi
