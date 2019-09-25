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

Evaluation
-----------



