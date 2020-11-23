#150116884 - Esra Polat
#150112064 - Serkan Erol
#150112008 - Mustafa Kibaroglu

# With draw histgoram
histogram(){    
    #if count is zero
    if [ "$1" = 0 ] ; then
        echo #passed
    else #if count is different from zero
        printf "%0.s*" $(seq 1 $1) #repeat * count times
        echo
    fi
}

zero=0
one=0
two=0
three=0
four=0
five=0
six=0
seven=0
eight=0
nine=0

#read and count from file
while read num || [ -n "$num" ];
do
    #if there is the number in file, increment it by one
    case $num in
        0)  zero=$((zero+1));;
        1)  one=$((one+1));;
        2)  two=$((two+1));;
        3)  three=$((three+1));;
        4)  four=$((four+1));;
        5)  five=$((five+1));;
        6)  six=$((six+1));;
        7)  seven=$((seven+1));;
        8)  eight=$((eight+1));;
        9)  nine=$((nine+1));;
        *)  echo "Opps! Unknown data.." ;
    esac
done < "./$1"

printf '0 '
histogram $zero

printf '1 '
histogram $one

printf '2 '
histogram $two

printf '3 '
histogram $three

printf '4 '
histogram $four

printf '5 '
histogram $five

printf '6 '
histogram $six

printf '7 '
histogram $seven

printf '8 '
histogram $eight

printf '9 '
histogram $nine

# echo "Press a key...";
# read
echo
exec ./myprog.sh
