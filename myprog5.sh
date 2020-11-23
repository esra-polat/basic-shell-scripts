#150116884 - Esra Polat
#150112064 - Serkan Erol
#150112008 - Mustafa Kibaroglu

# option = $1
# wildcard = $2

copy_func(){
    mkdir copied
    for line in `cat tmp_file.sh`
    do
        cp $line copied
        echo "$line copied!"
    done
}

rm -rf ./copied
if [ $1 ]; then
    #if there is -R option
    if [ "$1" = "R" ] || [ "$1" = "r" ] || [ "$1" = "-R" ] || [ "$1" = "-r" ] ; then
        ls -l $1;
        #creating temporary file
        find $2 -type f > tmp_file.sh
        copy_func
    #if there is no option
    else
        ls -l .
        #creating temporary file
        find $2 > tmp_file.sh
        copy_func
    fi
fi
# echo "Press a key...";
# read
# echo
# exec ./myprog.sh
