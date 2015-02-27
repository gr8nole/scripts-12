#! /bin/bash

rm ~/time_previous.txt
mv ~/time.txt  ~/time_previous.txt



tput setf 6; echo  "Moving to source directory..."; tput setf 7
echo " "
cd ~/cm12

date  >> ~/time.txt
echo " " >> ~/time.txt
echo "Repo sync START time..." $(date +"%T") >> ~/time.txt


tput setf 6; echo "Syncing repo..."; tput setf 7
echo " "
repo sync -c

echo "Repo sync STOP time...." $(date +"%T") >> ~/time.txt
echo " "
tput setf 6; echo "Moving to vendor/cm..."; tput setf 7
echo " "

cd ~/cm12/vendor/cm

tput setf 6; echo "Getting pre-builts..."; tput setf 7
echo " "

 ./get-prebuilts
echo " "
tput setf 6; echo "Merging frameworks/av..."; tput setf 7
echo " "
cd ~/cm12/frameworks/av
git remote add upstream https://github.com/kumajaya/android_frameworks_av
git fetch upstream
git checkout cm-12.0
git merge -m "merge kumajaya commits" upstream/cm-12.0
echo "Done"
echo " "
tput setf 6; echo "Merging system/vold..."; tput setf 7
echo " "
cd ~/cm12/system/vold
git remote add upstream https://github.com/kumajaya/android_system_vold
git fetch upstream
git checkout cm-12.0
git merge -m "merge kumajaya commits" upstream/cm-12.0
echo "Done"
echo " "
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
#tput setf 6; echo "Making breakfast before clobber..."; tput setf 7
#echo " "
#breakfast lt01wifi
#echo " "
#tput setf 6; echo "Deleting output folder..."; tput setf 7
#echo " "
#make clobber
#echo " "
tput setf 6; echo "Building T311..."; tput setf 7
echo " "
echo " " >> ~/time.txt
echo " " >> ~/time.txt
echo "T311 build START time..." $(date +"%T") >> ~/time.txt
brunch lt013g

echo "T311 build STOP time...." $(date +"%T") >> ~/time.txt
echo " "

if [ ! -d ~/Builds ]; then
    mkdir ~/Builds
fi

if [ ! -d ~/Builds/$(date +"%m-%d-%Y") ]; then
    mkdir ~/Builds/$(date +"%m-%d-%Y")
fi

cp ~/cm12/out/target/product/lt013g/cm-12*.zip  ~/Builds/$(date +"%m-%d-%Y")/

tput setf 6; echo "Building T310..."; tput setf 7
echo " "
echo " " >> ~/time.txt
echo " " >> ~/time.txt
echo "T310 build START time..." $(date +"%T") >> ~/time.txt
brunch lt01wifi

echo "T310 build STOP time...." $(date +"%T") >> ~/time.txt
echo " "

cp ~/cm12/out/target/product/lt01wifi/cm-12*.zip  ~/Builds/$(date +"%m-%d-%Y")/

tput setf 6; echo "Building T315..."; tput setf 7
echo " "
echo " " >> ~/time.txt
echo " " >> ~/time.txt
echo "T315 build START time..." $(date +"%T") >> ~/time.txt
brunch lt01lte

echo "T315 build STOP time...." $(date +"%T") >> ~/time.txt

cp ~/cm12/out/target/product/lt01lte/cm-12*.zip  ~/Builds/$(date +"%m-%d-%Y")/

done
