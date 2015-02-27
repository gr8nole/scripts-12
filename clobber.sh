while :
do
  clear

  echo 
  echo "============================================================"
  echo "    gr8nole's Clobber Menu            >>>>--------;;;----->"
  echo "============================================================"
  echo 
  echo "> CLOBBER MENU"
  echo
echo " y. - YES - MAKE CLOBBER"
echo " n. - NO - DON'T CLOBBER"

  echo 
  echo -n "Enter option: "
  read opt
if [ "$?" != "1" ]
  then
    case $opt in
      y) tput sgr0;~/scripts-12/make_clobber.sh;exit;;
      n) tput sgr0;exit;;
     esac
  fi
done