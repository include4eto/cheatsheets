#!/bin/bash -x

# Bash cheatsheet

# vars
str=string
echo $str
echo;

echo $((1 + 1))
echo $[1 + 5]
echo $[4 * 3]
echo 3/4 | bc -l
echo 'scale=2; 3/4' | bc

# local variables
HELLO=Hello 
function hello {
	local HELLO=World
	echo $HELLO
}
echo $HELLO
hello
echo $HELLO

echo;

# ifs
if [ "foo" = "foo" ]; then
	echo bar
fi

echo;
# loops


for i in $( ls ); do
	echo item: $i
done

echo;
for i in `seq 1 10`;
do
	echo $i
done    

echo;
COUNTER=0
while [  $COUNTER -lt 10 ]; do
	echo The counter is $COUNTER
	let COUNTER=COUNTER+1 
done

echo;
# functions
function baz {
	echo $1
	echo $@
}

baz 1 2 3

echo;

# menus
OPTIONS="Hello Quit Continue"
select opt in $OPTIONS; do
	if [ "$opt" = "Quit" ]; then
		echo done
		exit
	elif [ "$opt" = "Hello" ]; then
		echo Hello World
	elif [ "$opt" = "Continue" ]; then
		break;
	else
		clear
		echo bad option
	fi
done

echo;

# commands
# file name
echo $0;
