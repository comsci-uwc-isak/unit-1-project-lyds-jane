#!/bin/bash

#This program creates a new car for the user

#Make sure all arguments are present
if [ $# -ne 4 ]; then
    echo "Error. Please enter all information:"
    echo "License Maker Year Passengers"
fi

#Add to mainCarFile.txt

echo $1 $2 $3 $4 >> mainCarFile.txt

#Create file for recording trips

echo "Trip log for $1" > $1.txt

bash dumbFrame.sh Installation Complete