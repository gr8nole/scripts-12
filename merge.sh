#! /bin/bash


tput setf 6; echo "Merging frameworks/av..."; tput setf 7
echo " "
cd ~/cm12/frameworks/av
git remote add upstream https://github.com/ArchiDroid/android_frameworks_av
git fetch upstream
git cherry-pick 0f724cf3a1b0b057004712acffec5f836b7ad616

tput setf 6; echo "Merging frameworks/base..."; tput setf 7
echo " "
cd ~/cm12/frameworks/base
git remote add upstream https://github.com/gr8nole/android_frameworks_base
git fetch upstream
git cherry-pick 646939485ec6f7bc917998c28bcc4bcc47176777



echo "Done"
echo " "
done
