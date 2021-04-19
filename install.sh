#!/bin/bash

R="\033[1;31m[*] \033[0m"
B="\033[1;34m[*] \033[0m"
G="\033[1;32m[+] \033[0m"

progress() {
	count=0
	total=34
	pstr="[=======================================================================]"

	while [ $count -lt $total ]; do
  	sleep 0.2 # this is work
  	count=$(( $count + 1 ))
  	pd=$(( $count * 73 / $total ))
  	printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
	done
}

clear
red="\e[1;91m" 
echo -e $red
cat banner/banner.txt
echo
printf "\e[1;92;5m[\e[1;37;5m+\e[92m]\e[1;34;5m Script By : Albin Joseph C. R \e[0m\e[1;5m[ UCEH ]\e[0m"
echo
echo

echo -e $B"Installing CCS Script..."
cp ccs /usr/bin/ccs
mkdir /$(whoami)/ccs
mkdir /$(whoami)/ccs/Output
cp -R banner /$(whoami)/ccs/banner 
progress
sleep 1
clear
echo
echo -e $G"Made Working Directory in $(whoami)"
sleep 1
echo
echo -e $B"Successfully Installed CCS Script! "
echo
echo -e $G"Type ccs in Terminal to Launch the CCS Script! "
echo
echo -e $B"Buy Me A Coffee!, Visit: https://in.linkedin.com/in/albinjosephcr"
echo
exit 0


