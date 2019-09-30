![CarRental](logo.png)

Car Rental Minimal App
===========================

A car rental management minimal app in Bash.

Contents
-----
  1. [Planning](#planning)
  1. [Design](#design)
  1. [Development](#development)
  1. [Evalution](#evaluation)

Planning
----------

The Minimal Car Rental app program is very feasible, with minimal organizational issues. The project centers around **technical feasibility**, using only bash and the terminal, making that aspect simple and not concerning. This also means that the **economic factor** of the program is very feasible, because the user does not need to spend any money on extra software or training. The project is **legal**, since all it does is record information inputted by the user. The **operational feasibility** of the project is relatively simple; each car both has its own .txt file and contributes to an aggregate .txt file, and the script prompts the user for specific inputs. The **schedule** of the project depends on the experience of the coder, however, it couldn’t take more than a week to develop the programs to input various information into the files. Ultimately, this system is very realistic and could easily be developed.


Design
---------

### First sketch of system

![System Diagram](systemDiagram.png)

**Fig 1** this diagram shows the main components of the minimal rental app. It includes inputs/outputs and main actions.


## Flow Diagrams

### Flow diagram for creating a frame in the bash terminal

Development
--------

### 1. Script for installation

The script below creates the folder structure for the application

```.sh
#!/bin/bash

#This program creates the folder structure for the minimal rental car

echo "Starting installation"
echo "Installing in desktop (default). Click ENTER."
read

cd /Users/lydiaetherington/Desktop

#create app folder

mkdir RentalCarApp
cd RentalCarApp
mkdir database
mkdir scripts

#confirm

echo "Installation completed successfully"
```
This script meets the requirement of the client for a simple installation. However, it could be simplified so that the user does not need to excecute the program by typing ``bash install.sh``

### Problem Solving

1. How to detect if a number is odd or even

```.sh
  if [ $len % 2 -eq 0 ]
```

2. How to create uninstall program

```
cd /Users/lydiaetherington/Desktop
rm -r RentalCarApp/
```

### Developing the action Create New Car
This process involves the inputs License, Make, Year, and Passengers being added to the main car file and its own file.
The following steps describe the algorithm

1. Get the inputs as arguments `$1 $2 $3 $4`
2. Ensure that the user has given all four arguments
```
if [ $# -ne 4 ]; then
  echo "Error. Please enter all information."
fi
```
3. Store new car inside mainCarFile.txt
`echo $1 $2 $3 $3 >> mainCarFile.txt`
4. Create new file for recording trips
`echo " " > $1.txt`

### Developing the action Record New Trip
This process involves the inputs License and Distance being added to the car's file

1. Get the inputs as arguments `$1 $2`
2. Check that the car exists
```
if [ ! -f $1.txt ]; then
  echo "Car does not exist"
fi
```
3. Add new trip to car's file
```
echo $2 >> $1.txt
```

Evaluation
-----------



