while :
do
  clear

  echo 
  echo "============================================================"
  echo "    gr8nole's Build Menu            >>>>--------;;;----->"
  echo " "
  echo "    Recovery Build Menu "
  echo "============================================================"
  echo 
  echo "> MAIN MENU"
  echo
echo " 1. - Compile T210 Recovery	1a.- Create T210 Philz_Touch packages"
echo " 2. - Compile T211 Recovery	2a.- Create T211 Philz_Touch packages"
echo " 3. - Compile i605 Recovery	3a.- Create i605 Philz_Touch packages"
echo " 4. - Compile T310 Recovery"
echo " 5. - Compile T311 Recovery	5a.- Create T31x CWM packages"
echo " 6. - Compile T315 Recovery"
echo " "
echo " "
echo " r.- Reset Colors"
echo " "
echo " x.- EXIT "
  echo 
  echo -n "Enter option: "
  read opt
if [ "$?" != "1" ]
  then
    case $opt in
      1) tput sgr0;~/scripts-12/make_T210_recovery.sh;tput setf 0; tput setb 7;;
      2) tput sgr0;~/scripts-12/make_T211_recovery.sh;tput setf 0; tput setb 7;;
      3) tput sgr0;~/scripts-12/make_i605_recovery.sh;tput setf 0; tput setb 7;;
      4) tput sgr0;~/scripts-12/make_T310_recovery.sh;tput setf 0; tput setb 7;;
      5) tput sgr0;~/scripts-12/make_T311_recovery.sh;tput setf 0; tput setb 7;;
      6) tput sgr0;~/scripts-12/make_T315_recovery.sh;tput setf 0; tput setb 7;;
      1a) tput sgr0;~/scripts-12/philzlt02wifi.sh;tput setf 0; tput setb 7;;
      2a) tput sgr0;~/scripts-12/philzlt023g.sh;tput setf 0; tput setb 7;;
      3a) tput sgr0;~/scripts-12/philzi605.sh;tput setf 0; tput setb 7;;
      5a) tput sgr0;~/scripts-12/cwmlt01wifi.sh;~/scripts-12/cwmlt013g.sh;~/scripts-12/cwmlt01lte.sh;tput setf 0; tput setb 7;;
      r) tput sgr0;;
      x) exit;;
    esac
  fi
done