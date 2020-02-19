#!/usr/bin/env sh
echo "what is your name"
read name
PS3='Please enter your choice: '
options=("Tell a joke" "Show disk usage" "Show current dir" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Tell a joke")
            echo "this is a joke hahahaha"
            ;;
        "Show disk usage")
            df
            ;;
        "Show current dir")
		    pwd
            ;;
        "Exit")
		    echo "goodbye, $name"
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done