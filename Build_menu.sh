while :
do
  clear

  echo 
  echo "============================================================"
  echo "    gr8nole's Build Menu            >>>>--------;;;----->"
  echo "============================================================"
  echo 
  echo "> MAIN MENU"
  echo
echo " 1. - Compile T210 Recovery	1a.- Create T210 Philz_Touch packages"
echo " 2. - Compile T211 Recovery	2a.- Create T211 Philz_Touch packages"
echo " 3. - Compile i605 Recovery	3a.- Create i605 Philz_Touch packages"
echo " 4. - Compile T310 Recovery	4a.- Create T21x CWM packages"
echo " 5. - Compile T311 Recovery	5a.- Create T31x CWM packages"
echo " 6. - Compile T315 Recovery	6a.- Create T21x TWRP packages"
echo " 7. - cm12 sync only		7a.- Create T31x TWRP packages"
echo " 8. - cm12 Build T31x no sync	g. - Goya Menu"	
echo " 9. - Build cm12 all T31x	p. - Sync with Philz_Touch"
echo " 10.- Build T310 cm12		pp.- Update Philz w/ gr8nole attributes"		 
echo " 11.- Build T311 cm12"		
echo " 12.- Build T315 cm12		t. - Sync with TWRP"
echo " 13.- Build T210 cm12    	tt.- Update TWRP w/ gr8nole attributes"
echo " "
echo " r.- Reset Colors		uu.- Update CWM w/ gr8nole attributes"
echo " x.- EXIT "
  echo 
  echo -n "Enter option: "
  read opt
if [ "$?" != "1" ]
  then
    case $opt in
      1) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/make_T210_recovery.sh;tput setf 0; tput setb 7;;
      2) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/make_T211_recovery.sh;tput setf 0; tput setb 7;;
      3) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/make_i605_recovery.sh;tput setf 0; tput setb 7;;
      4) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/make_T310_recovery.sh;tput setf 0; tput setb 7;;
      5) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/make_T311_recovery.sh;tput setf 0; tput setb 7;;
      6) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/make_T315_recovery.sh;tput setf 0; tput setb 7;;
      7) tput sgr0; ~/scripts-12/sync_only.sh;~/scripts-12/merge.sh;tput setf 0; tput setb 7;;
      8) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/build_nosync.sh;tput setf 0; tput setb 7;;
      9) tput sgr0;rm -rf ~/cm12/bootable/recovery; ~/scripts-12/clobber.sh;~/scripts-12/build.sh;tput setf 0; tput setb 7;;
      10) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/build_T310.sh;tput setf 0; tput setb 7;;
      11) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/build_T311.sh;tput setf 0; tput setb 7;;
      12) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/build_T315.sh;tput setf 0; tput setb 7;;
      13) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/build_T210.sh;tput setf 0; tput setb 7;;
      1a) tput sgr0;~/scripts-12/philzlt02wifi.sh;tput setf 0; tput setb 7;;
      2a) tput sgr0;~/scripts-12/philzlt023g.sh;tput setf 0; tput setb 7;;
      3a) tput sgr0;~/scripts-12/philzi605.sh;tput setf 0; tput setb 7;;
	  4a) tput sgr0;~/scripts-12/cwmlt02wifi.sh;~/scripts-12/cwmlt023g.sh;tput setf 0; tput setb 7;;
      5a) tput sgr0;~/scripts-12/cwmlt01wifi.sh;~/scripts-12/cwmlt013g.sh;~/scripts-12/cwmlt01lte.sh;tput setf 0; tput setb 7;;
	  6a) tput sgr0;~/scripts-12/twrplt02wifi.sh;~/scripts-12/twrplt023g.sh;tput setf 0; tput setb 7;;
      7a) tput sgr0;~/scripts-12/twrplt01wifi.sh;~/scripts-12/twrplt013g.sh;~/scripts-12/twrplt01lte.sh;tput setf 0; tput setb 7;;
	  g)  tput sgr0;~/scripts-12/goyamenu.sh;tput setf 0; tput setb 7;;
      p) tput sgr0;~/scripts-12/sync_philz.sh ;tput setf 0; tput setb 7;;
      pp) tput sgr0;sed -i -e 's/Compiled %s/Compiled by gr8nole %s/g' ~/cm12/bootable/recovery-philz/extendedcommands.c;cp ~/scripts-12/icon_clockwork.png ~/cm12/bootable/recovery-philz/res/images/icon_clockwork.png;tput setf 0; tput setb 7;;
      t) tput sgr0;~/scripts-12/sync_twrp.sh ;tput setf 0; tput setb 7;;
      tt) tput sgr0;cp ~/scripts-12/top-bar.jpg ~/cm12/bootable/recovery/gui/devices/800x1280/res/images/top-bar.jpg;cp ~/scripts-12/background.jpg ~/cm12/bootable/recovery/gui/devices/1024x600/res/images/background.jpg;tput setf 0; tput setb 7;;
      r) tput sgr0;;
      uu) cp ~/scripts-12/icon_clockwork.png ~/cm12/bootable/recovery/res/images/icon_clockwork.png;tput setf 0; tput setb 7;;
      x) exit;;
    esac
  fi
done
