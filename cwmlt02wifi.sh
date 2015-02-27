#! /bin/bash

grep 'RECOVERY_VERSION := $(RECOVERY_NAME) '  ~/cm12/bootable/recovery/Android.mk  > ~/BuildNumber.txt

split -l 1 ~/BuildNumber.txt new

rm ~/BuildNumber.txt
rm ~/cBuild.sh
cat ~/newaa | cut -c38-48 > ~/number.txt
echo 'BUILD=' > blank.txt
cat ~/blank.txt ~/number.txt | tr -d '\n' > ~/blank1.sh
echo '#! /bin/bash
' >blank2.sh

cat ~/blank1.sh >> ~/blank2.sh
cat ~/blank2.sh > ~/cBuild.sh


rm ~/new*

cat ~/scripts-12/cwmTarlt02wifi.txt >> ~/cBuild.sh

bash cBuild.sh
rm blank1.sh
rm blank2.sh
rm number.txt
rm blank.txt
rm cBuild.sh


done
