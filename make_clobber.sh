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
tput setf 6; echo "Making breakfast before clobber..."; tput setf 7
echo " "
breakfast lt01wifi
echo " "
tput setf 6; echo "Deleting output folder..."; tput setf 7
echo " "
make clobber

done
