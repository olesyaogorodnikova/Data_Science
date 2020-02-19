#!/bin/bash
echo "what is your name"
read name
echo "select the operation, $name ************"
echo "  1)tell a joke"
echo "  2)Show disk usage"
echo "  3)Show current dir"
echo "  4)exit" 


read n
while true ;
    do
		case $n in
		  1) echo "this is a joke";;
		  2) df;;
		  3) pwd;;
		  4) echo "goodbye, $name"
					exit;;
		  *) echo "invalid option";;
		esac
	echo "choose again"
	read n
done