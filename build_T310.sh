#! /bin/bash

rm ~/time_previous.txt
mv ~/time.txt  ~/time_previous.txt



tput setf 6; echo  "Moving to source directory..."; tput setf 7
echo " "
cd ~/cm12

date  >> ~/time.txt
echo " " >> ~/time.txt
echo " "
tput setf 6; echo "Ensuring ccache is used..."; tput setf 7
echo " "
export USE_CCACHE=1
tput setf 6; echo "Setting up source environment..."; tput setf 7
echo " "
source build/envsetup.sh
echo " "
#tput setf 6; echo "Making breakfast before clobber..."; tput setf 7
#echo " "
#breakfast lt01wifi
#echo " "
#tput setf 6; echo "Deleting output folder..."; tput setf 7
#echo " "
#make clobber
#echo " "
tput setf 6; echo "Building T310..."; tput setf 7
echo " "
echo " " >> ~/time.txt
echo " " >> ~/time.txt
echo "T310 build START time..." $(date +"%T") >> ~/time.txt
brunch lt01wifi

echo "T310 build STOP time...." $(date +"%T") >> ~/time.txt
echo " "

#if [ ! -d ~/Builds ]; then
#    mkdir ~/Builds
#fi
#
#if [ ! -d ~/Builds/$(date +"%m-%d-%Y") ]; then
#    mkdir ~/Builds/$(date +"%m-%d-%Y")
#fi
#
#cp ~/cm12/out/target/product/lt01wifi/cm-12*.zip  ~/Builds/$(date +"%m-%d-%Y")/

done
