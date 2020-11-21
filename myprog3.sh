path=$1

#Check the accuracy of the path
if [ ! -d $path ]; then
    echo Given path is not a directory or not found
    echo "Press a key. . .";
    read
    exec ./myprog.sh
fi

#if there is argument of path
if [ $path ]; then
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
   else echo "Sorry, there is only yes or no!"
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
      echo "File is NOT deleted"
   else echo "You have failed succesfully! :)"
   fi
fi

echo "Press a key to return to the menu...";
read
clear
exec ./myprog.sh
