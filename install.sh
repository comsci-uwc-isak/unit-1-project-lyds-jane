#!/bin/bash

#This program creates the folder structure for the minimal rental car

bash dumbFrame.sh Welcome
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
