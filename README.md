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

### Definition of the problem
A car rental company is looking for a new system that can help them record data about their cars, specifically regarding the trips they have made.

Currently, this is done on paper. This is an incredibly inefficiant system, as it is difficult to organize and access. The pages must be sorted by-hand, and if one is lost or destroyed, the information is gone. the company is looking for a way to store their information on the computer and back it up regularily.

However, they do not know much about computers. They want to be able to create, delete, and edit basic information about each car. They also want to record trips and see a summary of their trips upon request.

I have volunteered to create this system for them, and make it as 

### Proposed Solution
The Minimal Car Rental app program on bash is very feasible, with minimal organizational issues. The project centers around **technical feasibility**, using only bash and the terminal, making that aspect simple and not concerning. This also means that the **economic factor** of the program is very feasible, because the user does not need to spend any money on extra software or training. The project is **legal**, since all it does is record information inputted by the user. The **operational feasibility** of the project is relatively simple; each car both has its own .txt file and contributes to an aggregate .txt file, and the script prompts the user for specific inputs. The **schedule** of the project depends on the experience of the coder, however, it couldn’t take more than a week to develop the programs to input various information into the files. Ultimately, this system is very realistic and could easily be developed.


### Success Criteria
These are outcomes that can be measured
1. A car can be created, deleted, and edited
2. A trip can be recorded for a given car
3. A summary (total distance travelled, average) of trips can be requested
4. A basic working backup system is available
5. The user can easily (name notation, documentation) understand the commands
6. Simple installation & uninstallation (no additional software, one-step process)

Design
---------

### First sketch of system

![System Diagram](systemDiagram.png)

**Fig 1** this diagram shows the main components of the minimal rental app. It includes inputs/outputs and main actions.


## Flow Diagrams

### Flow diagram for creating a frame in the bash terminal

Development
--------

### Script for installation

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

## Framing text (used in create.sh)

Below is the flowchart for a program that frames an argument:

![frame1](frame1.HEIC) 
![frame2](frame2.HEIC)

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

Test 1: A car can be created and stored in the database
For this purpose we will create the file testCreate.sh. This is called software testing.

First, we need to check that the file create.sh exists:
```
cd ../scripts/
if [ -f "create.sh" ]; then
        echo "File exists, test will start now."
else
        echo "Error. File create.sh does not exist. Test failed."
        exit
fi
```

Then, we run the program to create a car:
```
bash create.sh TXM901 Nissan red 9
```

Once the car has been created, we need to check two things:

#1: Was a .txt file created for this car?
```
cd ../Database/
if [ -f "TXM901.txt" ]; then
        echo "First stage successful. Proceeding with test"
else
        echo "Test failed."
        exit
fi

```

#2: Was this car added to mainCarFile.txt?
```
cd ../Database/
firstline=$( tail -n 1 mainCarFile.txt )
if [ "$firstline"  == "TXM901 Nissan red 9" ]; then
        echo "Test successful."
else
        echo "Test failed."
        exit
fi

```

Then, we need to delete the car created by the test.
```
cd ../Database/
rm TXM901.txt
echo " " > mainCarFile.txt
```

This is known as **dynamic, alpha, white-box** testing. Dynamic testing is when the program is excecuted through the test, as opposed to static testing, where the code is simply read through. In this test, create.sh is run and checked for errors, making this test dynamic. Alpha testing is when a program is tested internally by developpers, before being released to the client. Since we used this to test our own code, it was alpha testing. However, if the user used testCreate.sh to test the program, it would be beta testing. Finally, white-box testing (or structural testing) is when the test looks inside the program in order to check its functionability. This is different than black-box testing (or functional testing), where the structure is unknown, and software interfaces are used. Since this program looks inside mainCarFile.txt and Database/ for the new car, it is white-box testing.
