#/bin/bash

join() {	
	echo -e "\033[1M"
	echo -e "[5A"
	echo -n "          "
	echo -n [41m "  JOIN   "
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m "  EXIT  " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	state=1
}

signin() {
	echo -e "\033[1M"
	echo -e "[5A"
	echo -n "          "
	echo -n [44m "  JOIN   "
	echo -n [0m "            "
	echo [41m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m "  EXIT  " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	state=2
}

btexit() {
	echo -e "\033[1M"
	echo -e "[5A"
	echo -n "          "
	echo -n [44m "  JOIN   "
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [41m "  EXIT  " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	state=3
}

signout() {
	echo -e "\033[1M"
	echo -e "[5A"
	echo -n "          "
	echo -n [44m "  JOIN   "
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m "  EXIT  " [0m
	echo -n "             "
	echo [41m "  SIGN OUT " [0m
	state=4
}	


input=""
state=1

title() {
	echo "          ____   ___  ____ ___ _       _"
	echo "         / ___| / _ \\/ ___|_ _| |     / |"
	echo "         \\___ \\| | | \\___ \\| || |     | |"
	echo "          ___) | |_| |___) | || |__   | |"
	echo "         |____/ \\___/|____/___|____|  |_|"
	echo "             _  _____  _    __  ____  __"
	echo "            / \\|_   _|/ \\   \\ \\/ /\\ \\/ /"
	echo "           / _ \\ | | / _ \\   \\  /  \\  / "
	echo "          / ___ \\| |/ ___ \\  /  \\  /  \\ "
	echo "         /_/   \\_\\_/_/   \\_\\/_/\\_\\/_/\\_\\"

	echo -n "          "
	echo -n [44m "  JOIN   "
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m "  EXIT  " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	read -s -n 3 input
	if [  $input == "[A"  ]
		then
		join
	fi
}
selectmain() {
	while :
	do
		read -s -n 3 input
		if [  $input == "[B"  ] && [  $state == 1  ]
			then
			btexit
		elif [  $input == "[C"  ] && [  $state == 1  ]
			then
			signin
		elif [  $input == "[D"  ] && [  $state == 2  ]
			then
			join
		elif [  $input == "[B"  ] && [  $state == 2  ]
			then
			signout
		elif [  $input == "[A"  ] && [  $state == 3  ]
			then
			join
		elif [  $input == "[C"  ] && [  $state == 3  ]
			then
			signout
		elif [  $input == "[A"  ] && [  $state == 4  ]
			then
			signin
		elif [  $input == "[D"  ] && [  $state == 4  ]
			then
			btexit
		elif [  $input -eq 10  ]
			then
			exit

		fi
	done
}
titlesignin() {
	echo ""
	echo "        ____ ___ ____ _   _   ___ _   _   "
	echo "       / ___|_  / ___| \\ | | |_ _| \\ | |  "
	echo "       \\___ \\| | |  _|  \\| |  | ||  \\| |  "
	echo "        ___) | | |_| | |\\  |  | || |\\  |  "
	echo "       |____/___\\____|_| \\_| |___|_| \\_|  "



}


title
selectmain
