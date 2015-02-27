#! /bin/bash

grep '#define TW_VERSION_STR'  ~/cm12/bootable/recovery/variables.h  > ~/BuildNumber.txt

split -l 1 ~/BuildNumber.txt new

rm ~/BuildNumber.txt
rm ~/cBuild.sh
cat ~/newaa | cut -c38-44 > ~/number.txt
echo 'BUILD=' > blank.txt
cat ~/blank.txt ~/number.txt | tr -d '\n' > ~/blank1.sh
echo '#! /bin/bash
' >blank2.sh

cat ~/blank1.sh >> ~/blank2.sh
cat ~/blank2.sh > ~/cBuild.sh


rm ~/new*

cat ~/scripts-12/twrpTargoyawifi.txt >> ~/cBuild.sh

bash cBuild.sh
rm blank1.sh
rm blank2.sh
rm number.txt
rm blank.txt
rm cBuild.sh


done
