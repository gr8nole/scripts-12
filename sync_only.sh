#! /bin/bash


tput setf 6; echo  "Moving to source directory..."; tput setf 7
echo " "
cd ~/cm12

tput setf 6; echo "Syncing repo..."; tput setf 7
echo " "
repo sync -c


