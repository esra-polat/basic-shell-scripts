#! /bin/bash

file=$*

#we check the file does exist
if [ -f $file ]; then
     
    #if the file does exist we change the numbers to text
    sed -e 's/0/zero/g' -e 's/1/one/g' -e 's/2/two/g' -e 's/3/three/g' -e 's/4/four/g' -e 's/5/five/g'  -e 's/6/six/g' -e 's/7/seven/g'  -e 's/8/eight/g' -e 's/9/nine/g' $file
    
    #back to the menu
    echo "The program worked properly.Press a key to return to the menu...";
    read
    exec ./myprog.sh
    

#if the file does not exist
else
echo The file does not exist
echo "Press a key to return to the menu. . .";
read
exec ./myprog.sh

fi

