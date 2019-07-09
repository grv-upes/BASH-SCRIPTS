#!/bin/bash

echo "###########################################################################################################################################"
sleep 0.2s
echo "It's difficutlt to remember all the tabs of CRUNCH to make wordlists."
sleep 0.1s
echo "This script does exactly that, it helps you just enter what do you want in your wordlists, it has all the customizations provided by CRUNCH."
sleep 0.3s
echo "Reference:"
echo "@ represents lowercase letters"
echo ", represents uppercase letters"
echo "% represents numbers"
echo "^ represents special characters"
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
sleep 0.1s
echo "Let' begin"
printf "\nEnter mininmum length>>> "
sleep 0.1s
read min
printf "\nEnter maximum length>>> "
sleep 0.1s
read max
sleep 0.3s
printf "\nCRUNCH also allows you to use a particular charset\n"
printf "Do you want to enter a charset(N/Y)>>> "
sleep 0.1s
read charchoice
sleep 0.2s

if [ "$charchoice" == "y" ] || [ "$charchoice" == "Y" ]; then
printf "\nEnter the charset: "
sleep 0.1s
read charset
printf "\n#########################################################################"
#crunch $min $max $charset
else
sleep 0.1s
printf "\n#########################################################################"
#crunch $min $max $charset
fi

printf "\n This is not it , crunch provides you more options, the options are as follows:"
echo "1)Enter a particular from which you want the wordlist to begin with (strlen() should either be minimum length or maximum lenth)."
echo "2)Limit the number of repeating characters ( EXAMPLE: 2@ (this will not allow lowercase letters to repeat more than twice)."
echo "3)Set a specific pattern of @,%^ (EXAMPLE: 5000%%%%% (this will start all the results in the wordlists with 5000 and then all the character represented by % will be random [Refer to reference above])."
echo "4)Allows the literal interpretation of @,%^ when using option 3 (read manual page of crunch for more information)." 

printf "\nEnter any option if you want to try them out.\n"
echo "For now this script only allows you to enter one option."
echo "Enter 0 if you want don't want to try the above options>>> "
sleep 0.1s
read option

case $option in
0)
  echo "Thank you !!!"
  sleep 0.1s
  crunch $min $max $charset
  ;;
1)
  echo "Enter the string>>> "
  read str
  string="-s $str"
  crunch $min $max $charset $string
  ;;
2)
  echo "Enter the limit>>> "
  read lim
  limit="-d $lim"
  crunch $min $max $charset $limit
  ;;
3)
  echo "Enter the pattern>>> "
  read pat
  pattern="-t $pat"
  crunch $min $max $charset $pattern
  ;;
4)
  echo "Enter the character you want to literate>>> "
  read char
  character="-l $char"
  crunch $min $max $charset $character
  ;;
*) 
  echo "Select a valid option."
  echo "We're constantly working on the script."
  echo "Keep looking for the updates"
  ;;
esac

echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
printf "\n"
echo "THANK YOU!!!"

# ADD LINK TO GITHUB REPO
# ADD LINK TO CRUNCH USAGE



