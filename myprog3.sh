#150116884 - Esra Polat
#150112064 - Serkan Erol
#150112008 - Mustafa Kibaroglu

path=$1

#Check the accuracy of the path
if [ ! -d $path ]; then
	echo Given path is not a directory or not found
	echo "Press a key to return to the menu...";
	read
	exec ./myprog.sh
		
#if there is an argument of path
elif [ $path ]; then
	#Go to the directory 
	cd $path 
	echo "The directory you are currently working on is: "
	#Showing the directory we are currently working on for security measures
	pwd
	echo "The oldest file in this directory is :"
	#Finding and showing the oldest file with -l to give explicit information to the user
	ls -p -lt | grep -v / | tail -1
	read -p "Do you want to delete it? (y/n)": answer
		   
	#Check the user's answer and execute
	if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
		rm "$(ls -p -t | grep -v / | tail -1)"
		echo "File deleted!"
	elif [ "$answer" = "n" ] || [ "$answer" = "N" ]; then
		   echo "File is NOT deleted"
	else echo "Sorry, that is not an option!"
	fi

#Turning back to the directory we started which includes our menu, myprog.sh
cd - 

#if there is not path argument 
else
	echo "The directory you are currently working on is: "
	pwd
	echo "The oldest file in current directory is:"
	ls -p -lt | grep -v / | tail -1
	read -p "Do you want to delete it (y/n)": answer
		   
	if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
		rm "$(ls -p -t | grep -v / | tail -1)"
		   echo "File deleted!"
	elif [ "$answer" = "n" ] || [ "$answer" = "N" ]; then
		      echo "Mission abort! File is NOT deleted"
	else 
		echo "You have failed succesfully! :)"
	fi 
fi
#Going back to the menu
echo "Press a key to return to the menu...";
read
clear
exec ./myprog.sh
