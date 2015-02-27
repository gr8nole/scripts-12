while :
do
  clear

  echo 
  echo "============================================================"
  echo "gr8nole's Goya T110 Recovery Build Menu  >>--------;;;----->"
  echo "============================================================"
  echo 
  echo "> MAIN MENU"
  echo
echo " 1. - Compile T110 Recovery	1a.- Create T110 Philz_Touch packages"
echo " 				"
echo " 				"
echo " 				4a.- Create T11x CWM packages"
echo " "
echo " 				6a.- Create T11x TWRP packages"
echo " "
echo " "	
echo " "
echo " "		 
echo " "		
echo " "
echo "                          	"
echo " r.- Reset Colors"
echo " 				"
echo " x.- EXIT "
  echo 
  echo -n "Enter option: "
  read opt
if [ "$?" != "1" ]
  then
    case $opt in
      1) tput sgr0;~/scripts-12/clobber.sh;~/scripts-12/make_T110_recovery.sh;tput setf 0; tput setb 7;;      
      1a) tput sgr0;~/scripts-12/philzgoyawifi.sh;tput setf 0; tput setb 7;;      
	  4a) tput sgr0;~/scripts-12/cwmgoyawifi.sh;tput setf 0; tput setb 7;;      
	  6a) tput sgr0;~/scripts-12/twrpgoyawifi.sh;tput setf 0; tput setb 7;;      
      r) tput sgr0;;      
      x) exit;;
    esac
  fi
done
