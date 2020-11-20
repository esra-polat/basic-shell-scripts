while :; do
    clear
    echo "1. Create histogram"
    echo "2. Encryption"
    echo "3. Delete oldest"
    echo "4. Convert numbers"
    echo "5. Organized files"
    echo "6. Exit"
    read -p "Please select an option: " choice
    case $choice in

    1)
        echo "Please enter a filename: "
        read arg
        exec ./myprog1.sh "arg"
        ;;

    2)
        echo "Please enter a string and a number: "
        read arg
        arr=($arg)
        exec ./myprog2.sh "${arr[0]}" "${arr[1]}"
        ;;

    3)
        echo "If you want, please enter pathname or continue without argument: "
        read arg
        exec ./myprog3.sh "arg"
        ;;

    4)
        echo "Please enter a filename : "
        read arg
        exec ./myprog4.sh "arg"
        ;;

    5)
        echo "If you want, please enter a wildcard with -R or continue without wildcard: "
        read arg
        arr=($arg)
        exec ./myprog2.sh "${arr[0]}" "${arr[1]}"
        ;;

    6) exit 0 ;;

    *)
        echo "Opps! Please select choice 1, 2, 3, 4, 5 or 6"
        echo "Press a key: "
        read
        ;;
    esac
done
