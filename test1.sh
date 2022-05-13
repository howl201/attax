#/bin/bash
enter="
"
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
statejo=1
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
	if [  "$input" = "[A"  ]
		then
		join
	fi
}
selectmain() {
	while :
	do
		read -s -N1 input
		if [  "$input" = ""  ]
		then
		read -s -n 1 input
		if [  "$input" = "["  ]
		then
		read -s -n 1 input 
		if [  "$input" = "B"  ] && [  $state == 1  ]
			then
			btexit
		elif [  "$input" = "C"  ] && [  $state == 1  ]
			then
			signin
		elif [  "$input" = "D"  ] && [  $state == 2  ]
			then
			join
		elif [  "$input" = "B"  ] && [  $state == 2  ]
			then
			signout
		elif [  "$input" = "A"  ] && [  $state == 3  ]
			then
			join
		elif [  "$input" = "C"  ] && [  $state == 3  ]
			then
			signout
		elif [  "$input" = "A"  ] && [  $state == 4  ]
			then
			signin
		elif [  "$input" = "D"  ] && [  $state == 4  ]
			then
			btexit
		fi
		fi
		elif [  "$input" = "$enter"  ] && [  $state == "3"  ]
			then
			exit
		elif [  "$input" = "$enter"  ] && [  $state == "2"  ]
			then
			titlesignin
			selectsignin
		elif [  "$input" = "$enter"  ] && [  $state == "4"  ]
			then
			signoutfunc
			selectsignout
		elif [  "$input" = "$enter"  ] && [  $state == "1"  ]
			then
			joinmenu
			selectjoin
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
		read -s -N1 input
		if [  "$input" = ""  ]
		then
		read -s -n 1 input
		if [  "$input" = "["  ]
		then
		read -s -n 1 input 
		if [  "$input" = "B"  ] && [  $statesn == 1  ]
			then
			pw
		elif [  "$input" = "C"  ] && [  $statesn == 1  ]
			then
			dc
		elif [  "$input" = "A"  ] && [  $statesn == 2  ]
			then
			id
		elif [  "$input" = "B"  ] && [  $statesn == 2  ]
			then
			sn
		elif [  "$input" = "B"  ] && [  $statesn == 3  ]
			then
			ex
		elif [  "$input" = "D"  ] && [  $statesn == 3  ]
			then
			id
		elif [  "$input" = "A"  ] && [  $statesn == 4  ]
			then
			pw
		elif [  "$input" = "C"  ] && [  $statesn == 4  ]
			then
			ex
		elif [  "$input" = "A"  ] && [  $statesn == 5  ]
			then
			dc
		elif [  "$input" = "D"  ] && [  $statesn == 5  ]
			then
			sn
		fi
		fi
		elif [  "$input" = "$enter"  ] && [  $statesn == "5"  ]
			then
			exit
		elif [  "$input" = "$enter"  ] && [  $statesn == "1"  ]
		then 
			echo -e "\033[6A"
			echo -n "      "
			echo -n [41m "               " [0m
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
			echo -n [41m
			echo -n "    "
			read userid
			echo -n [0m
			echo -n -e "\033[0B"
			echo -n "      "
			echo -n [41m
			echo -n "               "
	  		echo -e -n "\033[11D"
			read userpw
			echo -e -n "\033[1B"
			echo -n [0m "         "
			echo -n [41m " SIGN IN " [0m
	while :
		do
			read -s -N1 input
		if [  "$input" = "$enter"  ]
			then
			echo -e $userid > userid1.txt
			echo -e $userpw >> userid1.txt
			exit
		fi
		done
		else
			touch userid2.txt
			echo -e "\033[6A"
			echo -n -e "\033[10C"
			echo -n [41m
			read userid
			echo -n [0m
			echo -e -n "\033[1A"
			echo -n -e "\033[26C"
			echo [41m " Duplicate check " [0m
	while :
		do
			read -s -N1 input
		if [  "$input" = "$enter"  ]
			then
		while read line
		do
		if [  "$line" = "$userid"  ]
			then	
			echo -e -n "\033[6B"
			echo "sign in X"
			exit
		else
			echo -e -n "\033[6B"
			echo "sign in OK"
			exit
		fi
		done < "userid1.txt"
		elif [  "$input" = ""  ]
			then
			read -s -n 1 input
			if [  "$input" = "["  ]
			then
			read -s -n 1 input
			if [  "$input" = "D"  ]
				then
				echo -n -e "\033[1A"
				echo -n -e "\033[26C"
				echo -n [44m " Duplicate check " [0m
				echo ""
				echo ""
				echo -n "      "
				echo -n [41m "                "
				echo -n -e "\033[11D"
				read userpw
				echo -n [0m
				echo -n -e "\033[1B"
				echo -n "         "
				echo [41m "  SIGN IN  "
			while :
			do
				read -s -N1 input
			if [  "$input" = "$enter"  ]
				then
				touch userid2.txt
				echo -e $userid > userid2.txt
				echo -e $userpw >> userid2.txt
				exit
			fi
	done
			fi
			fi
		fi
		done
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
		read -s -N1 input
		if [  "$input" = ""  ]
		then
		read -s -n 1 input
		if [  "$input" = "["  ]
		then
		read -s -n 1 input 
		if [  "$input" = "B"  ] && [  $stateso == 1  ]
			then
			sopw
		elif [  "$input" = "A"  ] && [  $stateso == 2  ]
			then
			soid
		elif [  "$input" = "B"  ] && [  $stateso == 2  ]
			then
			soso
		elif [  "$input" = "C"  ] && [  $stateso == 3  ]
			then
			soex
		elif [  "$input" = "A"  ] && [  $stateso == 3  ]
			then
			sopw
		elif [  "$input" = "A"  ] && [  $stateso == 4  ]
			then
			sopw
		elif [  "$input" = "D"  ] && [  $stateso == 4  ]
			then
			soso
		fi
		fi
		elif [  "$input" = "$enter"  ] && [  $stateso == "4"  ]
		then
			exit
		elif [  "$input" = "$enter"  ] && [  $stateso == "1"  ]
			then
			echo -e -n "\033[6A"
			echo -e -n "\033[13C"
			echo -n [41m "               "
			echo -n -e "\033[10D"
			read userid
			echo -n -e "\033[1B"
			echo -n -e "\033[13C"
			echo -n [41m "               "
			echo -e -n "\033[10D"
			read userpw
			echo ""
			echo ""
			echo -n -e "\033[11C"
			echo -n "  SIGN OUT " [0m
		while :
			do
			read -s -N1 input
			if [  "$input" = "$enter"  ]
			then
				touch signout.txt
				echo -e $userid > signout.txt
				echo -e $userpw >> signout.txt
	if [  -e "userid1.txt"  ]
		then
			while read line
				do
					id1="$id1""$line"
				done < userid1.txt
		fi
	if [  -e "userid2.txt"  ]
		then
			while read line
				do
					id2="$id2""$line"
				done < userid2.txt
		fi
		while read line
				do
					soid="$soid""$line"
				done < signout.txt
				if [  "$id1" = "$soid"  ] && [  -e "userid1.txt"  ]
					then
					rm userid1.txt
					rm signout.txt
					echo "user1 del"
					exit
				elif [  "$id2" = "$soid"  ] && [  -e "userid2.txt"  ]
					then
					rm userid2.txt
					rm signout.txt
					echo "user2 del"
					exit
				else
					rm signout.txt
					echo "no match"
					exit
				fi
				
			fi
		done
		fi
done
}
joinmenu() {
	echo "        _ ____    _     ___   ____ ___ _   _  "
	echo "       / |  _ \\  | |   / _ \\ / ___|_ _| \\ | | "
	echo "       | | |_) | | |  | | | | |  _ | ||  \\| | "
	echo "       | |  __/  | |__| |_| | |_| || || |\\  | "
	echo "       |_|_|     |____ \\___/ \\____|___|_| \\_| "
	echo ""
	echo ""
	echo -n "         "
	echo -n [44m "        ID        " [0m
	echo ""
	echo ""
	echo -n "         "
	echo -n [44m "        PW        " [0m
	echo ""
	echo ""
	echo -n "       "
	echo -n [44m " LOGIN " [0m 
	echo -n "    "
	echo -n [44m "  EXIT  " [0m
	echo ""
	echo ""

}
joinmenu2p() {
	echo "       _____  ____    _     ___   ____ ___ _   _ "
	echo "      |___  \\|  _ \\  | |   / _ \\ / ___|_ _| \\ | |"
	echo "        __)  | |_) | | |  | | | | |  _ | ||  \\| |"
	echo "       /  __/|  __/  | |__| |_| | |_| || || |\\  |"
	echo "      |______|_|     |____|\\___/ \\____|___|_| \\_|"
	echo ""
	echo ""
	echo -n "         "
	echo -n [44m "        ID        " [0m
	echo ""
	echo ""
	echo -n "         "
	echo -n [44m "        PW        " [0m
	echo ""
	echo ""
	echo -n "       "
	echo -n [44m " LOGIN " [0m 
	echo -n "    "
	echo -n [44m "  EXIT  " [0m
	echo ""
	echo ""

}
joinid() {
	echo -e "\033[7A"
	echo -n "         "
	echo -n [41m "        ID        " [0m
	echo ""
	echo ""
	echo -n "         "
	echo -n [44m "        PW        " [0m
	echo ""
	echo ""
	echo -n "       "
	echo -n [44m " LOGIN " [0m 
	echo -n "    "
	echo -n [44m "  EXIT  " [0m
	echo ""
	echo ""
	statejo=1
}
joinpw() {
	echo -e "\033[7A"
	echo -n "         "
	echo -n [44m "        ID        " [0m
	echo ""
	echo ""
	echo -n "         "
	echo -n [41m "        PW        " [0m
	echo ""
	echo ""
	echo -n "       "
	echo -n [44m " LOGIN " [0m 
	echo -n "    "
	echo -n [44m "  EXIT  " [0m
	echo ""
	echo ""
	statejo=2
}
joinsn() {
	echo -e "\033[7A"
	echo -n "         "
	echo -n [44m "        ID        " [0m
	echo ""
	echo ""
	echo -n "         "
	echo -n [44m "        PW        " [0m
	echo ""
	echo ""
	echo -n "       "
	echo -n [41m " LOGIN " [0m 
	echo -n "    "
	echo -n [44m "  EXIT  " [0m
	echo ""
	echo ""
	statejo=3
}
joinex() {
	echo -e "\033[7A"
	echo -n "         "
	echo -n [44m "        ID        " [0m
	echo ""
	echo ""
	echo -n "         "
	echo -n [44m "        PW        " [0m
	echo ""
	echo ""
	echo -n "       "
	echo -n [44m " LOGIN " [0m 
	echo -n "    "
	echo -n [41m "  EXIT  " [0m
	echo ""
	echo ""
	statejo=4
}
selectjoin() {
	while :
	do
		read -s -N1 input
		if [  "$input" = ""  ]
		then
		read -s -n 1 input
		if [  "$input" = "["  ]
		then
		read -s -n 1 input 
		if [  "$input" = "B"  ] && [  $statejo == 1  ]
			then
			joinpw
		elif [  "$input" = "A"  ] && [  $statejo == 2  ]
			then
			joinid
		elif [  "$input" = "B"  ] && [  $statejo == 2  ]
			then
			joinsn
		elif [  "$input" = "A"  ] && [  $statejo == 3  ]
			then
			joinpw
		elif [  "$input" = "C"  ] && [  $statejo == 3  ]
			then
			joinex
		elif [  "$input" = "A"  ] && [  $statejo == 4  ]
			then
			joinpw
		elif [  "$input" = "D"  ] && [  $statejo == 4  ]
			then
			joinsn
		fi
		fi
		elif [  "$input" = "$enter"  ] && [  $statejo == 4  ]
			then	
			exit
		elif [  "$input" = "$enter"  ] && [  $statejo == 1  ]
			then
			echo -n -e "\033[6A" 
			echo -n -e "\033[9C"
			echo -n [41m "                   "
			echo -n -e "\033[12D"
			read userid
			echo ""
			echo -e -n "\033[9C"
			echo -n "                  "
			echo -n -e "\033[12D"
			read userpw
			touch join.txt
			echo -e $userid > join.txt
			echo -e $userpw >> join.txt
	if [  -e "userid1.txt"  ]
		then
			while read line
				do
					id1="$id1""$line"
				done < userid1.txt
		fi
	if [  -e "userid2.txt"  ]
		then
			while read line
				do
					id2="$id2""$line"
				done < userid2.txt
		fi
		while read line
				do
					joid="$joid""$line"
				done < join.txt
			if [  "$id1" = "$joid"  ]
				then 
				joinmenu2p
				selectjoin
			else
				exit
			fi
		fi
done
}

title
selectmain
