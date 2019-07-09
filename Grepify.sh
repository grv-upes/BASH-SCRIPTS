#!/bin/bash
clear 
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
sleep 0.1s
clear
echo "\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\\"
sleep 0.1s
clear
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
sleep 0.1s
clear
echo "\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\\"
sleep 0.1s
clear
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
sleep 0.1s
clear
echo "\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\\"
sleep 0.1s
clear
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
sleep 0.1s
clear
echo "\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\\"
sleep 0.1s
clear
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
sleep 0.1s
clear
echo "\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\\"
sleep 0.1s
clear
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
sleep 0.1s
clear
echo "\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\\"
sleep 0.1s
clear
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
sleep 0.1s
clear
echo "\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\\"
sleep 0.1s
echo
echo "This a grep utility script that allows user to search for words in a file, search for related data in the file."
echo "It simplifies, grep command"
echo "To know more about Grep, use man command on your terminal, or rather use this ulility to easiy use grep. :)"
echo 
sleep 0.5s
echo "Enter the word to search"
read skey
echo
echo "Enter the file name with destination, eg /home/desktop/info.txt"
read filename
echo 
echo "Choose the mode you want to operate with"
echo "Normal mode -It displays the lines containg the word you searched for with the line numbers"
echo "Discriptive mode - It display the content i normal mode, in addition it also shows following 5 lines"
echo "Advanced Mode - A guided way to find the results obtained by grep"
echo "press either (N/D/A)"
read req
if [ "$req" == "N" ] || [ "$req" == "n" ]; then
echo "><><><><><><><><><You chosed the Normal mode ><><><><><><><><><><><><><"
echo
echo "<Line number>:<Lines containing the word you searched>"
grep -i -n "$skey" $filename
echo
echo "If there is no Output, it means no match found !"
echo "><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><"
fi
if [ "$req" == "D" ] || [ "$req" == "d" ]; then
echo "><><><><><><><><><You chosed the Discriptive mode ><><><><><><><><><><><><><"
echo
echo "<Line number>:<Lines containing the word you searched>"
grep -i -n "$skey" $filename
echo
echo
echo "The number of line containing the searched word are"
grep -i -c "$skey" $filename
echo
echo "If the number of line containing the searched word is 'zero'||'0', it means no match found !, in that case terminate the script by pressing 'CTRL+C'"
echo
echo "Enter the 'line number(you get from above)' of the line to print, with the following 5 lines"
read q
echo
echo "><><><><><><><><>< Results ><><><><><><><><><><><><><"
echo
echo "The line you asked for:"
head -n $q $filename | tail -n 1
q=$((q+5))
echo
echo "Tailing 5 lines"
head -n $q $filename | tail -n 5
echo
echo "><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><"
fi
if [ "$req" == "A" ] || [ "$req" == "a" ]; then
echo "><><><><><><><><><You chosed the Normal mode ><><><><><><><><><><><><><"
echo
echo "Still in development, for meantime try 'grep command' to get more advanced results"
echo
echo "><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><"
fi
