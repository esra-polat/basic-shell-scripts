#150116884 - Esra Polat
#150112064 - Serkan Erol
#150112008 - Mustafa Kibaroglu

#! /bin/bash

str=$1
num=$2

#Check if the arguments are given and if given, check if arguments are valid
#Check if 2 arguments are given
if [ "$#" -eq 2 ]; then
	
	#Check if the first arg is string
	if [[ "$str" != +([a-zA-Z]) ]]; then 
		echo "$str is not string"
		echo You should enter a string for the first argument
		echo "Press a key to return to the menu...";
		read
		exec ./myprog.sh
	
	#Check if the second arg in numeric
	elif [[ "$num" != ?(+|-)+([0-9]) ]]; then 
		echo "$num is not numeric"
		echo Please enter a number for the second argument
		echo "Press a key to return to the menu...";
		read
		exec ./myprog.sh
	
	#If the conditions are met, proceed to encryption
	elif [ ${#num} -eq ${#str} ]; then
	   	
	   	#Convert the string and  number into an array of individual characters
	   	for((i=0;i<${#str};i++)){
			arr[$i]=${str:i:1}	   	
			arr1[$i]=${num:i:1}	   	
	   	}
	   	#Finding ascii eq. of string's characters and finding new letters according to the given number
	   	for((j=0;j<${#str};j++)){
			asccode=$(printf '%d' "'${arr[$j]}")
			result=$((asccode+${arr1[$j]}))
			if [ $result -ge 91 ] && [ $result -le 96 ]; then
				res=$((result-25))
				newletters=$(printf \\$(printf '%03o' $res))
				echo $newletters
			elif [ $result -ge 123 ]; then
				res=$((result-25))
				newletters=$(printf \\$(printf '%03o' $res))
				echo $newletters
			else
				newletters=$(printf \\$(printf '%03o' $result))
				echo $newletters
			fi
	   	}
	elif [ ${#num} -eq 1 ]; then
	   	for((i=0;i<${#str};i++)){
			arr[$i]=${str:i:1}	   	
			arr1[$i]=$num	   	
	   	}
	   	for((j=0;j<${#str};j++)){
	   		asccode=$(printf '%d' "'${arr[$j]}")
			result=$((asccode+${arr1[$j]}))
			if [ $result -ge 91 ] && [ $result -le 96 ]; then
				res=$((result-25))
				newletters=$(printf \\$(printf '%03o' $res))
				echo $newletters
			elif [ $result -ge 123 ]; then
				res=$((result-25))
				newletters=$(printf \\$(printf '%03o' $res))
				echo $newletters
			else
				newletters=$(printf \\$(printf '%03o' $result))
				echo $newletters
			fi	
		} 	
	else
		echo "Your number must be 1 digit or same length of the string"   
	fi
else
   	echo "Either not enough arguments or too many arguments are given"	
fi
echo "Press a key to return to the menu...";
read
clear
exec ./myprog.sh
