#! /bin/bash

tput setf 6; echo "Moving to source directory..."; tput setf 7
echo " "
cd ~/cm12
echo " "
tput setf 6; echo "Ensuring ccache is used..."; tput setf 7
echo " "
export USE_CCACHE=1
tput setf 6; echo "Setting up source environment..."; tput setf 7
echo " "
source build/envsetup.sh
echo " "
tput setf 6; echo "Making breakfast..."; tput setf 7
echo " "
breakfast lt023g
echo " "
#tput setf 6; echo "Deleting output folder..."; tput setf 7
#echo " "
#make clobber
#echo " "
tput setf 6; echo "Building T211 recovery..."; tput setf 7
echo " "
make -j4 recoveryimage

if [ ! -d ~/Builds ]; then
    mkdir ~/Builds
fi

if [ ! -d ~/Builds/$(date +"%m-%d-%Y") ]; then
    mkdir ~/Builds/$(date +"%m-%d-%Y")
fi

if [ ! -d ~/Builds/$(date +"%m-%d-%Y")/T211 ]; then
    mkdir ~/Builds/$(date +"%m-%d-%Y")/T211
fi

cp ~/cm12/out/target/product/lt023g/recovery.img  ~/Builds/$(date +"%m-%d-%Y")/T211/


done
