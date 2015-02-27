#! /bin/bash

sudo apt-get install bison build-essential curl flex \
g++-multilib gcc-multilib git-core gnupg gperf \
lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev \
libesd0-dev libncurses5-dev libsdl1.2-dev \
libwxgtk2.8-dev libxml2 libxml2-utils lzop \
openjdk-6-jdk openjdk-6-jre pngcrush schedtool \
squashfs-tools xsltproc zip zlib1g-dev

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java6-installer

mkdir ~/bin
PATH=~/bin:$PATH
cd ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

export PATH=${PATH}:~/bin

echo '
export PATH=${PATH}:~/bin
' >> ~/.bashrc
echo 'export USE_CCACHE=1
' >> ~/.bashrc

mkdir ~/cm12

cd ~/cm12

repo init -u git://github.com/CyanogenMod/android.git -b cm-12.0

cp -ar ~/scripts-12/local_manifests ~/cm12/.repo/local_manifests

repo sync -c

cd ~/cm12/vendor/cm
./get-prebuilts

cd ~/cm12

export USE_CCACHE=1
prebuilts/misc/linux-x86/ccache/ccache -M 50G

done
