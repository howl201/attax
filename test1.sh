#/bin/bash
enter=""
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
statesn=1
userid=""
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
		read -s -N1 input
		if [  $input == ""  ]
		then
		read -s -n 1 input
		if [  $input == "["  ]
		then
		read -s -n 1 input 
		if [  $input == "B"  ] && [  $state == 1  ]
			then
			btexit
		elif [  $input == "C"  ] && [  $state == 1  ]
			then
			signin
		elif [  $input == "D"  ] && [  $state == 2  ]
			then
			join
		elif [  $input == "B"  ] && [  $state == 2  ]
			then
			signout
		elif [  $input == "A"  ] && [  $state == 3  ]
			then
			join
		elif [  $input == "C"  ] && [  $state == 3  ]
			then
			signout
		elif [  $input == "A"  ] && [  $state == 4  ]
			then
			signin
		elif [  $input == "D"  ] && [  $state == 4  ]
			then
			btexit
		fi
		fi
		elif [  $input == "."  ] && [  $state == "3"  ]
			then
			exit
		elif [  $input == "."  ] && [  $state == "2"  ]
			then
			titlesignin
			selectsignin
		elif [  $input == "."  ] && [  $state == "4"  ]
			then
			signoutfunc
			selectsignout
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
	echo ""
	echo -n "      "
	echo -n [44m "      ID       " [0m
	echo -n "   "
	echo [44m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [44m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [44m " SIGN IN " [0m
	echo -n "    "
	echo -n [44m "  EXIT  "[0m
	echo ""

	

}
id() {
	echo -e "\033[6A"
	echo -n "      "
	echo -n [41m "      ID       " [0m
	echo -n "   "
	echo [44m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [44m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [44m " SIGN IN " [0m
	echo -n "    "
	echo -n [44m "  EXIT  "[0m
	echo ""
	statesn=1
}
pw() {
	echo -e "\033[6A"
	echo -n "      "
	echo -n [44m "      ID       " [0m
	echo -n "   "
	echo [44m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [41m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [44m " SIGN IN " [0m
	echo -n "    "
	echo -n [44m "  EXIT  "[0m
	echo ""
	statesn=2
}
dc() {
	echo -e "\033[6A"
	echo -n "      "
	echo -n [44m "      ID       " [0m
	echo -n "   "
	echo [41m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [44m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [44m " SIGN IN " [0m
	echo -n "    "
	echo -n [44m "  EXIT  "[0m
	echo ""
	statesn=3
}
sn() {
	echo -e "\033[6A"
	echo -n "      " 
	echo -n [44m "      ID       " [0m
	echo -n "   "
	echo [44m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [44m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [41m " SIGN IN " [0m
	echo -n "    "
	echo -n [44m "  EXIT  "[0m
	echo ""
	statesn=4
}
ex() {
	echo -e "\033[6A"
	echo -n "      "
	echo -n [44m "      ID       " [0m
	echo -n "   "
	echo [44m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [44m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [44m " SIGN IN " [0m
	echo -n "    "
	echo -n [41m "  EXIT  "[0m
	echo ""
	statesn=5
}
idin() {
	echo -e "\033[6A"
	echo -n "      "
	echo -n [41m "    "
	echo -n "$userid"
	echo [0m
	echo -n "   "
	echo [44m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [44m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [44m " SIGN IN " [0m
	echo -n "    "
	echo -n [44m "  EXIT  "[0m
	echo ""
	statesn=3
}
dc() {
	echo -e "\033[6A"
	echo -n "      "
	echo -n [44m "      ID       " [0m
	echo -n "   "
	echo [41m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [44m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [44m " SIGN IN " [0m
	echo -n "    "
	echo -n [44m "  EXIT  "[0m
	echo ""
	statesn=3
}
dc() {
	echo -e "\033[6A"
	echo -n "      "
	echo -n [44m "      ID       " [0m
	echo -n "   "
	echo [41m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [44m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [44m " SIGN IN " [0m
	echo -n "    "
	echo -n [44m "  EXIT  "[0m
	echo ""
	statesn=3
}
dc() {
	echo -e "\033[6A"
	echo -n "      "
	echo -n [44m "      ID       " [0m
	echo -n "   "
	echo [41m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [44m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [44m " SIGN IN " [0m
	echo -n "    "
	echo -n [44m "  EXIT  "[0m
	echo ""
	statesn=3
}
dc() {
	echo -e "\033[6A"
	echo -n "      "
	echo -n [44m "      ID       " [0m
	echo -n "   "
	echo [41m " Duplicate check " [0m
	echo ""
	echo -n "      "
	echo -n [44m "      PW       " [0m 
	echo ""
	echo ""
	echo -n "          "
	echo -n [44m " SIGN IN " [0m
	echo -n "    "
	echo -n [44m "  EXIT  "[0m
	echo ""
	statesn=3
}

selectsignin() {

	while :
	do
		read -s -n 1 input
		if [  $input == ""  ]
		then
		read -s -n 1 input
		if [  $input == "["  ]
		then
		read -s -n 1 input 
		if [  $input == "B"  ] && [  $statesn == 1  ]
			then
			pw
		elif [  $input == "C"  ] && [  $statesn == 1  ]
			then
			dc
		elif [  $input == "A"  ] && [  $statesn == 2  ]
			then
			id
		elif [  $input == "B"  ] && [  $statesn == 2  ]
			then
			sn
		elif [  $input == "B"  ] && [  $statesn == 3  ]
			then
			ex
		elif [  $input == "D"  ] && [  $statesn == 3  ]
			then
			id
		elif [  $input == "A"  ] && [  $statesn == 4  ]
			then
			pw
		elif [  $input == "C"  ] && [  $statesn == 4  ]
			then
			ex
		elif [  $input == "A"  ] && [  $statesn == 5  ]
			then
			dc
		elif [  $input == "D"  ] && [  $statesn == 5  ]
			then
			sn
		fi
		fi
		elif [  $input == "."  ] && [  $statesn == 5  ]
			then
			exit
		elif [  $input == "."  ] && [  $statesn == 1  ]
		then 
			echo -e "\033[6A"
			echo -n "      "
			echo -n [44m "               " [0m
			echo -n "   "
			echo [44m " Duplicate check " [0m
			echo ""
			echo -n "      "
			echo -n [44m "      PW       " [0m 
			echo ""
			echo ""
			echo -n "          "
			echo -n [44m " SIGN IN " [0m
			echo -n "    "
			echo -n [44m "  EXIT  "[0m
			echo ""
		if [  ! -e "userid1.txt"  ]
		then
			touch userid1.txt
			echo -e "\033[6A"
			echo -n "      "
			echo -n [44m
			echo -n "    "
			read userid
			echo -n [0m
			echo -n -e "\033[0B"
			echo -n "      "
			echo -n [44m
			echo -n "    "
			read userpw
			echo -e "\033[0B"
			echo -n [0m "          "
			echo -n [41m " SIGN IN " [0m
			echo -e "$userid" > userid1.txt
			echo -e "$userpw" >> userid1.txt
			echo -e "\033[1B"
			exit
		
		else
			touch userid2.txt
			echo -e "\033[6A"
			echo -n "      "
			echo -n [44m
			echo -n "    "
			read userid
			echo "                    "
			echo -e "\033[1A"
			echo -n [0m
			echo -n -e "\033[0B"
			echo -n "      "
			echo -n [44m
			echo -n "    "
			read userpw
			echo -n [0m
			echo -e "\033[2B"
			echo -n "          "
 			echo -n [41m " SIGN IN "
				echo -e "\033[0m"
				echo -e "$userid" > userid2.txt
				echo -e "$userpw" >> userid2.txt
				echo -e "\033[1B"
				exit
		fi
			
		fi	
	done
}
signoutfunc() {
	echo ""
	echo "     ____ ___ ____ _   _     ___  _   _ _____ "
	echo "    / ___|_  / ___| \\ | |   / _ \\| | | |_   _|"
	echo "    \\___ \\| | |  _|  \\| |  | | | | | | | | |  "
	echo "     ___) | | |_| | |\\  |  | |_| | |_| | | |  "
	echo "    |____/___\\____|_| \\_|   \\___/ \\___/  |_|  "
	echo ""
	echo -n "             "
	echo [44m "      ID      " [0m
	echo ""
	echo -n "             "
	echo [44m "      PW      " [0m
	echo ""
	echo ""
	echo -n "           "
	echo -n [44m " SIGN OUT " [0m
	echo -n "   "
	echo -n [44m "   EXIT   " [0m
	echo ""
}
stateso=1
soid() {
	echo -e "\033[7A"
	echo -n "             "
	echo [41m "      ID      " [0m
	echo ""
	echo -n "             "
	echo [44m "      PW      " [0m
	echo ""
	echo ""
	echo -n "           "
	echo -n [44m " SIGN OUT " [0m
	echo -n "   "
	echo -n [44m "   EXIT   " [0m
	echo ""
	stateso=1
}
sopw() {

	echo -e "\033[7A"
	echo -n "             "
	echo [44m "      ID      " [0m
	echo ""
	echo -n "             "
	echo [41m "      PW      " [0m
	echo ""
	echo ""
	echo -n "           "
	echo -n [44m " SIGN OUT " [0m
	echo -n "   "
	echo -n [44m "   EXIT   " [0m
	echo ""
	stateso=2
}
soso() {

	echo -e "\033[7A"
	echo -n "             "
	echo [44m "      ID      " [0m
	echo ""
	echo -n "             "
	echo [44m "      PW      " [0m
	echo ""
	echo ""
	echo -n "           "
	echo -n [41m " SIGN OUT " [0m
	echo -n "   "
	echo -n [44m "   EXIT   " [0m
	echo ""
	stateso=3
}
soex() {

	echo -e "\033[7A"
	echo -n "             "
	echo [44m "      ID      " [0m
	echo ""
	echo -n "             "
	echo [44m "      PW      " [0m
	echo ""
	echo ""
	echo -n "           "
	echo -n [44m " SIGN OUT " [0m
	echo -n "   "
	echo -n [41m "   EXIT   " [0m
	echo ""
	stateso=4
}
selectsignout() {
		
	while :
	do
		read -s -n 1 input
		if [  $input == ""  ]
		then
		read -s -n 1 input
		if [  $input == "["  ]
		then
		read -s -n 1 input 
		if [  $input == "B"  ] && [  $stateso == 1  ]
			then
			sopw
		elif [  $input == "A"  ] && [  $stateso == 2  ]
			then
			soid
		elif [  $input == "B"  ] && [  $stateso == 2  ]
			then
			soso
		elif [  $input == "C"  ] && [  $stateso == 3  ]
			then
			soex
		elif [  $input == "A"  ] && [  $stateso == 3  ]
			then
			sopw
		elif [  $input == "A"  ] && [  $stateso == 4  ]
			then
			sopw
		elif [  $input == "D"  ] && [  $stateso == 4  ]
			then
			soso
		fi
		fi
		elif [  $input == "."   ] && [  $stateso == 4  ]
		then
			exit
		fi
done
}

title
selectmain
