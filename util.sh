#!/bin/bash
clear

menu(){
	echo "----------------------------"
	echo 
	echo "	MENU"
	echo
	echo "----------------------------"
	echo
	echo "1. Launch htop to see processor acitvities"
	echo "2. Users currently logged in"
	echo "3. Show CPU info"
	echo "4. Show filesystem"
	echo "5. Show graphics processor"
	echo "6. Open Network manager"
	echo "7. Show pci devices in tree format"
	echo "8. Show space available on hard disk"
	echo "9. Flex arch btw :)"
	echo "10. Fortune by cows :)"
	echo "11. Fortune by dragons (they will be fire)"
	echo "12. To get a hacker-like wallpaper ;)"
	echo "13. Wanna see a graphic cow?!" 
	echo "14. For some Colorful greeting!!"
	echo "15. Channel your inner Joey!!"
	echo "16. A dad joke from a Turkey"
	echo "17. Exit"
	echo
	echo "----------------------------"
	echo
	echo "Please enter option [1 - 17]:"  
}

option=y

while [ "$option" != "17" ]
do
	menu

	read option

	case $option in
		1) htop;; # the user has to press [q] to exit and get back to main menu 
		2) who;;
		3) cat /proc/cpuinfo | grep -Em 4 "model name|cpu MHz|cpu cores|vendor_id";;
		4) lsblk;;
		5) lspci -v | grep -i vga;;
		6) nmtui;;
		7) lspci -vt;;
		8) df -i;;
		9) neofetch | lolcat;;
		10) fortune|cowsay;;
		11) fortune|cowsay -f dragons;;
		12) cmatrix;;
		13) xcowsay How pretty am I?!!;;
		14) toilet -f mono12 -F gay "Hello there! Have a nice day!!";;
		15) cowsay -f eyes How you doin;;
		16) cowsay -f turkey Why did the police arrest the Turkey? They suspecteed it of 'Fowl play'!;;
		17) break;;
		*) echo "Wrong option";; # * means anything else
esac

read -p "Press [enter] key to continue..." 
clear

done

clear

