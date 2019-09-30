#!/bin/bash

#This frames a word inputted by the user
word=$@
length=100
spaces=99

counter=0
while [ $counter -le $length ];
do
	(( counter++ ))
	echo -n "x"
done
echo "x"

counterTop=0
while [ $counterTop -le 3 ];
do
    (( counterTop++ ))
	echo -n "x"
    counterSpace=0
    while [ $counterSpace -le $spaces ];
    do
        (( counterSpace++ ))
        echo -n " "
    done
echo "x"
done

echo -n "x"
(( spaceWith= ( $spaces - ${#word} - 1 ) / 2 ))
counterAround=0

while [ $counterAround -le $spaceWith ];
do
	(( counterAround++ ))
	echo -n " "
done

echo -n $word

len=${#word}
(( l = $len % 2 ))
counterAroundTwo=0
while [ $counterAroundTwo -le $spaceWith ];
do
        (( counterAroundTwo++ ))
	echo -n " "
done
if [ $l -ne 0 ]; then
	echo -n " "
fi
echo "x"

counterBottom=0
while [ $counterBottom -le 3 ];
do
    (( counterBottom++ ))
	echo -n "x"
    counterSpace=0
    while [ $counterSpace -le $spaces ];
    do
        (( counterSpace++ ))
        echo -n " "
    done
echo "x"
done

counterTwo=0
while [ $counterTwo -le $length ];
do
        (( counterTwo++ ))
        echo -n "x"
done
echo "x"
