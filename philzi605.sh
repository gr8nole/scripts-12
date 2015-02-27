#! /bin/bash

grep PHILZ_BUILD ~/cm12/bootable/recovery/Android.mk  > ~/PhilzBuildNumber.txt

split -l 1 ~/PhilzBuildNumber.txt new

rm ~/PhilzBuildNumber.txt
rm ~/PhilzBuild.sh
cat ~/newaa | cut -c16-25 > ~/number.txt
echo 'PHILZ_BUILD=' >blank.txt
cat ~/blank.txt ~/number.txt | tr -d '\n' > ~/blank1.sh
echo '#! /bin/bash
' >blank2.sh

cat ~/blank1.sh >> ~/blank2.sh
cat ~/blank2.sh > ~/PhilzBuild.sh

rm ~/new*
rm blank1.sh
rm blank2.sh
rm number.txt
rm blank.txt

grep 'RECOVERY_VERSION := $(RECOVERY_NAME) '  ~/cm12/bootable/recovery/Android.mk  > ~/BuildNumber.txt

split -l 1 ~/BuildNumber.txt new

rm ~/BuildNumber.txt
cat ~/newaa | cut -c38-48 > ~/number.txt
echo 'BUILD=' > blank.txt
cat ~/blank.txt ~/number.txt | tr -d '\n' > ~/blank1.sh
echo '
' >blank2.sh

cat ~/blank1.sh >> ~/blank2.sh
cat ~/blank2.sh >> ~/PhilzBuild.sh

rm ~/new*

cat ~/scripts-12/PhilzTari605.txt >> ~/PhilzBuild.sh

bash PhilzBuild.sh
rm blank1.sh
rm blank2.sh
rm number.txt
rm PhilzBuild.sh
rm blank.txt


done
