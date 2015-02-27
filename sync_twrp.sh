#! /bin/bash

tput setf 6; echo  "Moving to bootable source directory..."; tput setf 7
echo " "
cd ~/cm12/bootable
tput setf 6; echo  "Removing current recovery directory..."; tput setf 7
echo " "
rm -rf ~/cm12/bootable/recovery


tput setf 6; echo "Syncing TWRP..."; tput setf 7
echo " "
git clone https://github.com/omnirom/android_bootable_recovery.git recovery

tput setf 6; echo "Sync complete..."; tput setf 7


done
