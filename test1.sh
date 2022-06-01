#/bin/bash
enter="
"
RESULT=$(head -n 1 userid1.txt)
id1="$RESULT"
RESULT=$(head -n 1 userid2.txt)
id2="$RESULT"
RESULT=$(head -n 1 userw1.txt)
id1w="$RESULT"
RESULT=$(head -n 1 userw2.txt)
id2w="$RESULT"
RESULT=$(head -n 1 userl1.txt)
id1l="$RESULT"
RESULT=$(head -n 1 userl2.txt)
id2l="$RESULT"
1plogin() {	
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [41m " 1P LOGIN  "
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=1
}
2plogin() {	
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m " 1P LOGIN  "
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [41m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=3
}

signin() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m " 1P LOGIN  "
	echo -n [0m "            "
	echo [41m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=2
}

btexit() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m " 1P LOGIN  "
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [41m "  EXIT  " [0m
	echo ""
	state=6
}

signout() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m " 1P LOGIN  "
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [41m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=4
}	
join() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m " 1P LOGIN  "
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [41m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=5
}
	
11plogin() {	
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [41m "   "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=1
}
12plogin() {	
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m
	echo -n "    "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [41m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=3
}

1signin() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m
	echo -n "    "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [41m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=2
}

1btexit() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m
	echo -n "    "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [41m "  EXIT  " [0m
	echo ""
	state=6
}

1signout() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m
	echo -n "    "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [41m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=4
}	
1join() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m
	echo -n "    "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [41m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=5
}	
21plogin() {	
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [41m "   "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m "   "
	echo -n "$id2"
	for((i=0; i<`expr 8-${#id2}`;i++)); do
		echo -n " "
	done
	echo -e -n [0m 
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=1
}
22plogin() {	
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m
	echo -n "    "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [41m "   "
	echo -n "$id2"
	for((i=0; i<`expr 8-${#id2}`;i++)); do
		echo -n " "
	done
	echo -e -n [0m 
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=3
}

2signin() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m
	echo -n "    "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [41m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m "   "
	echo -n "$id2"
	for((i=0; i<`expr 8-${#id2}`;i++)); do
		echo -n " "
	done
	echo -e -n [0m 
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=2
}

2btexit() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m
	echo -n "    "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m "   "
	echo -n "$id2"
	for((i=0; i<`expr 8-${#id2}`;i++)); do
		echo -n " "
	done
	echo -e -n [0m 
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [41m "  EXIT  " [0m
	echo ""
	state=6
}

2signout() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m
	echo -n "    "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m "   "
	echo -n "$id2"
	for((i=0; i<`expr 8-${#id2}`;i++)); do
		echo -n " "
	done
	echo -e -n [0m 
	echo -n "             "
	echo [41m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=4
}	
2join() {
	echo -e -n "\033[5A"
	echo -n "          "
	echo -n [44m
	echo -n "    "
	echo -n "$id1"
	for((i=0; i<`expr 8-${#id1}`;i++)); do
		echo -n " "
	done
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m "   "
	echo -n "$id2"
	for((i=0; i<`expr 8-${#id2}`;i++)); do
		echo -n " "
	done
	echo -e -n [0m 
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [41m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	state=5
}	
empty() {
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo "                                                                                    "
	echo -e -n "\033[31A"
}
map1menu() {
	echo "┌───┬───┬───┬───┬───┬───┬───┬───┐"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "└───┴───┴───┴───┴───┴───┴───┴───┘"
}
map1menu2() {
	echo "┌───┬───┬───┬───┬───┬───┬───┬───┐"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │"
	echo "└───┴───┴───┴───┴───┴───┴───┴───┘"
	echo -n -e "\033[8A"
	echo -n [43m "   " 
	echo -n -e "\033[17A"
	echo -n "   "
}
selectmap() {
	echo "                      _  _____  _    __  ____  __ "
	echo "                     / \|_   _|/ \   \ \/ /\ \/ / "
	echo "                    / _ \ | | / _ \   \  /  \  /  "
	echo "                   / ___ \| |/ ___ \  /  \  /  \  "
	echo "                  /_/   \_\_/_/   \_\/_/\_\/_/\_\ "
	echo "       __  __    _    ____    ____  _____ _     _____ ____ _____ "
	echo "      |  \/  |  / \  |  _ \  / ___|| ____| |   | ____/ ___|_   _|"
	echo "      | |\/| | / _ \ | |_) | \___ \|  _| | |   |  _|| |     | |  "
	echo "      | |  | |/ ___ \|  __/   ___) | |___| |___| |__| |___  | |  "
	echo "      |_|  |_/_/   \_\_|     |____/|_____|_____|_____\____| |_|  "
	echo ""
	echo ""
	echo "┌───┬───┬───┬───┬───┬───┬───┬───┐     ┌───┬───┬───┬───┬───┬───┬───┬───┐"
	echo "│   │   │   │   │   │   │   │   │     │   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │     │   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │     │   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │     │   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │     │   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │     │   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │     │   │   │   │   │   │   │   │   │"
	echo "├───┼───┼───┼───┼───┼───┼───┼───┤     ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "│   │   │   │   │   │   │   │   │     │   │   │   │   │   │   │   │   │"
	echo "└───┴───┴───┴───┴───┴───┴───┴───┘     └───┴───┴───┴───┴───┴───┴───┴───┘"
	echo "     "
	echo -n -e "\033[15A"
	echo -n -e "\033[43C"
	echo -n [43m "  " 
	echo -n -e "\033[17C"
	echo -n "   "
	echo -n -e "\033[2B"
	echo -n -e "\033[19D"
	echo -n "   "
	echo -n -e "\033[9C"
	echo -n "   "
	echo -n -e "\033[2B"
	echo -n -e "\033[11D"
	echo -n "   "
	echo -n -e "\033[1C"
	echo -n "   "
	echo -n -e "\033[2B"
	echo -n -e "\033[7D"
	echo -n "   "
	echo -n -e "\033[1C"
	echo -n "   "
	echo -n -e "\033[2B"
	echo -n -e "\033[11D"
	echo -n "   "	
	echo -n -e "\033[9C"
	echo -n "   "
	echo -n -e "\033[2B"
	echo -n -e "\033[19D"
	echo -n "   "
	echo -n -e "\033[17C"
	echo -n "  " [0m
	echo -e "\033[5B"
	echo -n "             "
	echo -n [44m "  MAP 1  " [0m
	echo -n "                              "
	echo [44m "  MAP 2  "[0m

}
statemap=1
map1hi() {
	echo -n -e "\033[1A"
	echo -n "             "
	echo -n [41m "  MAP 1  " [0m
	echo -n "                              "
	echo  [44m "  MAP 2  " [0m
	statemap=1
}
map2hi() {
	echo -n -e "\033[1A"
	echo -n "             "
	echo -n [44m "  MAP 1  " [0m
	echo -n "                              "
	echo  [41m "  MAP 2  " [0m
	statemap=2
}
fightmap1() {
	echo "            _  _____  _    __  ____  __  "
	echo "           / \|_   _|/ \   \ \/ /\ \/ /  "
	echo "          / _ \ | | / _ \   \  /  \  /   "
	echo "         / ___ \| |/ ___ \  /  \  /  \   "
	echo "        /_/   \_\_/_/   \_\/_/\_\/_/\_\  "
	echo ""
	echo "		┌───┬───┬───┬───┬───┬───┬───┬───┐"
	echo "		│   │   │   │   │   │   │   │   │"
	echo "		├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "		│   │   │   │   │   │   │   │   │"
	echo "		├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "		│   │   │   │   │   │   │   │   │"
	echo "		├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "		│   │   │   │   │   │   │   │   │"
	echo "		├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "		│   │   │   │   │   │   │   │   │"
	echo "		├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "		│   │   │   │   │   │   │   │   │"
	echo "		├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "		│   │   │   │   │   │   │   │   │"
	echo "		├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "		│   │   │   │   │   │   │   │   │"
	echo "		└───┴───┴───┴───┴───┴───┴───┴───┘"
	echo ""
	echo "    1P : 0                               2P : 0"
}
fightmap2() {
	echo "            _  _____  _    __  ____  __  "
	echo "           / \|_   _|/ \   \ \/ /\ \/ /  "
	echo "          / _ \ | | / _ \   \  /  \  /   "
	echo "         / ___ \| |/ ___ \  /  \  /  \   "
	echo "        /_/   \_\_/_/   \_\/_/\_\/_/\_\  "
	echo "      "
	echo "      ┌───┬───┬───┬───┬───┬───┬───┬───┐"
	echo "      │   │   │   │   │   │   │   │   │"
	echo "      ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "      │   │   │   │   │   │   │   │   │"
	echo "      ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "      │   │   │   │   │   │   │   │   │"
	echo "      ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "      │   │   │   │   │   │   │   │   │"
	echo "      ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "      │   │   │   │   │   │   │   │   │"
	echo "      ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "      │   │   │   │   │   │   │   │   │"
	echo "      ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "      │   │   │   │   │   │   │   │   │"
	echo "      ├───┼───┼───┼───┼───┼───┼───┼───┤"
	echo "      │   │   │   │   │   │   │   │   │"
	echo "      └───┴───┴───┴───┴───┴───┴───┴───┘"
	echo ""
	echo "    1P : 0                               2P : 0"
	echo -n -e "\033[16A"
	echo -n -e "\033[11C"
	echo -n [43m "  " 
	echo -n -e "\033[17C"
	echo -n "   "
	echo -n -e "\033[2B"
	echo -n -e "\033[19D"
	echo -n "   "
	echo -n -e "\033[9C"
	echo -n "   "
	echo -n -e "\033[2B"
	echo -n -e "\033[11D"
	echo -n "   "
	echo -n -e "\033[1C"
	echo -n "   "
	echo -n -e "\033[2B"
	echo -n -e "\033[7D"
	echo -n "   "
	echo -n -e "\033[1C"
	echo -n "   "
	echo -n -e "\033[2B"
	echo -n -e "\033[11D"
	echo -n "   "	
	echo -n -e "\033[9C"
	echo -n "   "
	echo -n -e "\033[2B"
	echo -n -e "\033[19D"
	echo -n "   "
	echo -n -e "\033[17C"
	echo -n "  " [0m
}


selectmapmenu() {
	while :
		do
			read -s -N1 input
			if [  "$input" = ""  ]
				then
					read -s -n 1 input
					if [  "$input" = "["  ]
						then
							read -s -n 1 input
							if [  "$input" = "C"  ] && [  $statemap == 1  ]
								then
									map2hi
							elif [  "$input" = "D"  ] && [  $statemap == 2  ]
								then
									map1hi
							fi
					fi
			elif [  "$input" = "$enter"  ] && [  $statemap == 1  ]
				then
					echo -n -e "\033[31A"
					empty
					fightmap1
			elif [  "$input" = "$enter"  ] && [  $statemap == 2  ]
				then
					echo -n -e "\033[31A"
					empty
					fightmap2
			fi
		done
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
	echo -n [44m " 1P LOGIN  "
	echo -n [0m "            "
	echo [44m "   SIGN IN " [0m
	echo ""
	echo -n "          "         
	echo -n [44m " 2P LOGIN " [0m
	echo -n "             "
	echo [44m "  SIGN OUT " [0m
	echo ""
	echo -n "          "
	echo  -n [44m "  JOIN  " [0m
	echo -n "     "
	echo -n [44m "  EXIT  " [0m
	echo ""
	read -s -n 3 input
	if [  "$input" = "[A"  ] || [  "$input" = "[B"  ] || [  "$input" = "[C"  ] || [  "$input" = "[D"  ]
		then
			state=1
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
				2plogin
		elif [  "$input" = "C"  ] && [  $state == 1  ]
			then
				signin
		elif [  "$input" = "D"  ] && [  $state == 2  ]
			then
				1plogin
		elif [  "$input" = "B"  ] && [  $state == 2  ]
			then
				signout
		elif [  "$input" = "A"  ] && [  $state == 3  ]
			then
				1plogin
		elif [  "$input" = "C"  ] && [  $state == 3  ]
			then
				signout
		elif [  "$input" = "B"  ] && [  $state == 3  ]
			then
				join
		elif [  "$input" = "A"  ] && [  $state == 4  ]
			then
				signin
		elif [  "$input" = "D"  ] && [  $state == 4  ]
			then
				2plogin
		elif [  "$input" = "B"  ] && [  $state == 4  ]
			then
				btexit
		elif [  "$input" = "A"  ] && [  $state == 5  ]
			then
				2plogin
		elif [  "$input" = "C"  ] && [  $state == 5  ]
			then
				btexit
		elif [  "$input" = "A"  ] && [  $state == 6  ]
			then
				signout
		elif [  "$input" = "D"  ] && [  $state == 6  ]
			then
				join
		fi
		fi
		elif [  "$input" = "$enter"  ] && [  $state == "2"  ]
			then
				echo -e -n "\033[31A"
				empty
				titlesignin
				selectsignin
		elif [  "$input" = "$enter"  ] && [  $state == "4"  ]
			then
				echo -e -n "\033[31A"
				empty
				signoutfunc
				selectsignout
		elif [  "$input" = "$enter"  ] && [  $state == "1"  ]
			then
				echo -e -n "\033[31A"
				empty
				joinmenu
				1selectjoin
		elif [  "$input" = "$enter"  ] && [  $state == "6"  ]
			then
				exit
		fi
	done
}
1selectmain() {
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
				12plogin
		elif [  "$input" = "C"  ] && [  $state == 1  ]
			then
				1signin
		elif [  "$input" = "D"  ] && [  $state == 2  ]
			then
				11plogin
		elif [  "$input" = "B"  ] && [  $state == 2  ]
			then
				1signout
		elif [  "$input" = "A"  ] && [  $state == 3  ]
			then
				11plogin
		elif [  "$input" = "C"  ] && [  $state == 3  ]
			then
				1signout
		elif [  "$input" = "B"  ] && [  $state == 3  ]
			then
				1join
		elif [  "$input" = "A"  ] && [  $state == 4  ]
			then
				1signin
		elif [  "$input" = "D"  ] && [  $state == 4  ]
			then
				12plogin
		elif [  "$input" = "B"  ] && [  $state == 4  ]
			then
				1btexit
		elif [  "$input" = "A"  ] && [  $state == 5  ]
			then
				12plogin
		elif [  "$input" = "C"  ] && [  $state == 5  ]
			then
				1btexit
		elif [  "$input" = "A"  ] && [  $state == 6  ]
			then
				1signout
		elif [  "$input" = "D"  ] && [  $state == 6  ]
			then
				1join
		fi
		fi
		elif [  "$input" = "$enter"  ] && [  $state == "3"  ]
			then
				echo -e -n "\033[31A"
				empty
				joinmenu2p
				2selectjoin
		elif [  "$input" = "$enter"  ] && [  $state == "2"  ]
			then
				echo -e -n "\033[31A"
				empty
				titlesignin
				selectsignin
		elif [  "$input" = "$enter"  ] && [  $state == "4"  ]
			then
				echo -e -n "\033[31A"
				empty
				signoutfunc
				selectsignout
		elif [  "$input" = "$enter"  ] && [  $state == "6"  ]
			then 
				exit
		fi
	done
}
2selectmain() {
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
				22plogin
		elif [  "$input" = "C"  ] && [  $state == 1  ]
			then
				2signin
		elif [  "$input" = "D"  ] && [  $state == 2  ]
			then
				21plogin
		elif [  "$input" = "B"  ] && [  $state == 2  ]
			then
				2signout
		elif [  "$input" = "A"  ] && [  $state == 3  ]
			then
				21plogin
		elif [  "$input" = "C"  ] && [  $state == 3  ]
			then
				2signout
		elif [  "$input" = "B"  ] && [  $state == 3  ]
			then
				2join
		elif [  "$input" = "A"  ] && [  $state == 4  ]
			then
				2signin
		elif [  "$input" = "D"  ] && [  $state == 4  ]
			then
				22plogin
		elif [  "$input" = "B"  ] && [  $state == 4  ]
			then
				2btexit
		elif [  "$input" = "A"  ] && [  $state == 5  ]
			then
				22plogin
		elif [  "$input" = "C"  ] && [  $state == 5  ]
			then
				2btexit
		elif [  "$input" = "A"  ] && [  $state == 6  ]
			then
				2signout
		elif [  "$input" = "D"  ] && [  $state == 6  ]
			then
				2join
		fi
		fi
		elif [  "$input" = "$enter"  ] && [  $state == "2"  ]
			then
				echo -e -n "\033[31A"
				empty
				titlesignin
				selectsignin
		elif [  "$input" = "$enter"  ] && [  $state == "4"  ]
			then
				echo -e -n "\033[31A"
				empty
				signoutfunc
				selectsignout
		elif [  "$input" = "$enter"  ] && [  $state == "6"  ]
			then
				exit
		elif [  "$input" = "$enter"  ] && [  $state == "5"  ]
			then
				echo -e -n "\033[31A"
				empty
				lobby
				selectlobby
		fi
	done
}
lobby() {
	echo "          _  _____  _    __  ____  __  "
	echo "         / \\|_   _|/ \\   \\ \\/ /\\ \\/ /  "
	echo "        / _ \\ | | / _ \\   \\  /  \\  /   "
	echo "       / ___ \\| |/ ___ \\  /  \\  /  \\   "
	echo "      /_/   \\_\\_/_/   \\_\\/_/\\_\\/_/\\_\\  "
	echo ""
	echo "       _     ___  ____  ______   __    "
	echo "      | |   / _ \\| __ )| __ ) \\ / /    "
	echo "      | |  | | | |  _ \\|  _ \\\\ V /     "
	echo "      | |__| |_| | |_) | |_) || |      "
	echo "      |_____\\___/|____/|____/ |_|      "
	echo ""
	echo "     _ ____                    ____  ____  "
	echo "    / |  _ \\                  |___ \\|  _ \ "
	echo "    | | |_) |                   __) | |_) |"
	echo "    | |  __/                   / __/|  __/ "
	echo "    |_|_|                     |_____|_|    "
	echo -n "   ID : "
	echo -n "$id1"
	echo -n "                   "
	echo -n "ID : "
	echo "$id2"
	echo -n "   WIN : "
	echo -n "$id1w"
	echo -n "                    "
	echo -n "WIN : "
	echo "$id2w"
	echo -n "   LOSE : "
	echo -n "$id1l"
	echo -n "                   "
	echo -n "LOSE : "
	echo "$id2l"
	echo -n "       "
	echo -n [44m "  START  " [0m
	echo -n "          "
	echo  [44m "   EXIT  " [0m
}
lobbystart() {
	echo -e -n "\033[1A"
	echo -n "       "
	echo -n [41m "  START  " [0m
	echo -n "          "
	echo [44m "   EXIT   " [0m
	statelobby=1
}
lobbyexit() {
	echo -e -n "\033[1A"
	echo -n "       "
	echo -n [44m "  START  " [0m
	echo -n "          "
	echo [41m "   EXIT   " [0m
	statelobby=2
}
statelobby=1
selectlobby() {
	while :
	do
	read -s -N1 input
	if [  "$input" = ""  ]
		then
			read -s -n 1 input
			if [  "$input" = "["  ]
				then 
					read -s -n 1 input
					if [  "$input" = "D"  ] && [  $statelobby == 2  ]
						then
							lobbystart
					elif [  "$input" = "C"  ] && [  $statelobby == 1  ]
						then
							lobbyexit
					fi
			fi
	elif [  "$input" = "$enter"  ] && [  $statelobby == 2  ]
		then
			exit
	elif [  "$input" = "$enter"  ] && [  $statelobby == 1  ]
		then
			echo -n -e "\033[31A"
			empty
			selectmap
			selectmapmenu
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
	read -s -n 3 input
	if [  "$input" = "[A"  ] || [  "$input" = "[B"  ] || [  "$input" = "[C"  ] || [  "$input" = "[D"  ]
		then
			id
	fi
	

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
				touch userw1.txt
				touch userl1.txt
				w1p="0"
				l1p="0"
				echo -e "\033[6A"
				echo -n "      "
				echo -n [41m
				echo -n "      "
				read userid
				echo -n [0m
				echo -n -e "\033[0B"
				echo -n "      "
				echo -n [41m
				echo -n "                 "
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
								echo -e $w1p > userw1.txt
								echo -e $l1p > userl1.txt
								echo ""
								exit
						fi
				done
		else
			touch userid2.txt
			touch userw2.txt
			touch userl2.txt
			w2p="0"
			l2p="0"
			echo -e "\033[6A"
			echo -n -e "\033[12C"
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
											echo -n "          "
											echo [41m " SIGN IN " [0m
											while :
												do
													read -s -N1 input
													if [  "$input" = "$enter"  ]
														then
															touch userid2.txt
															echo -e $userid > userid2.txt
															echo -e $userpw >> userid2.txt
															echo -e $w2p > userw2.txt
															echo -e $l2p > userl2.txt
															echo ""
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
	read -s -n 3 input
	if [  "$input" = "[A"  ] || [  "$input" = "[B"  ] || [  "$input" = "[C"  ] || [  "$input" = "[D"  ]
		then
			soid
	fi
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
												delid1="$delid1""$line"
											done < userid1.txt
								fi
								if [  -e "userid2.txt"  ]
									then
										while read line
											do
												delid2="$delid2""$line"
											done < userid2.txt
								fi
								while read line
									do
										soid="$soid""$line"
									done < signout.txt
								if [  "$delid1" = "$soid"  ] && [  -e "userid1.txt"  ]
									then
										rm userid1.txt
										rm userw1.txt
										rm userl1.txt
										rm signout.txt
										echo "id1 del"
										exit
								elif [  "$delid2" = "$soid"  ] && [  -e "userid2.txt"  ]
									then
										rm userid2.txt
										rm userw2.txt
										rm userl2.txt
										rm signout.txt
										echo "id2 del"
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
	read -s -n 3 input
	if [  "$input" = "[A"  ] || [  "$input" = "[B"  ] || [  "$input" = "[C"  ] || [  "$input" = "[D"  ]
		then
			joinid
	fi
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
	read -s -n 3 input
	if [  "$input" = "[A"  ] || [  "$input" = "[B"  ] || [  "$input" = "[C"  ] || [  "$input" = "[D"  ]
		then
			joinid
	fi
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
1selectjoin() {
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
						echo -n "                    "
						echo -n -e "\033[12D"
						read userpw
						touch join.txt
						echo -e $userid > join.txt
						echo -e $userpw >> join.txt
						echo ""
						echo -e -n "\033[7C"
						echo "  LOGIN  "[0m
						while :
							do 
								read -s -N1 input
								if [  "$input" = "$enter"  ]
									then
										if [  -e "userid1.txt"  ]
											then
												while read line
													do
														joid1="$joid1""$line"
													done < userid1.txt
										fi
										while read line
											do
												joid="$joid""$line"
											done < join.txt
										if [  "$joid1" = "$joid"  ]
											then
												unset joid1
												unset joid2
												unset joid
												log2p=2
												rm join.txt
												echo -n -e "\033[31A"
												empty  
												title
												1selectmain
											else
												rm join.txt
												exit
										fi
								fi
							done
				fi
	done
}

2selectjoin() {
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
						echo -n "                    "
						echo -n -e "\033[12D"
						read userpw
						touch join.txt
						echo -e $userid > join.txt
						echo -e $userpw >> join.txt
						echo ""
						echo -e -n "\033[7C"
						echo "  LOGIN  "[0m
						while :
							do 
								read -s -N1 input
								if [  "$input" = "$enter"  ]
									then
										if [  -e "userid2.txt"  ]
											then
												while read line
													do
														joid2="$joid2""$line"
													done < userid2.txt
										fi
										while read line
											do
												joid="$joid""$line"
											done < join.txt
										if [  "$joid2" = "$joid"  ]
											then
												unset joid1
												unset joid2
												unset joid
												rm join.txt
												echo -n -e "\033[13A"
												empty  
												title
												2selectmain
											else
												rm join.txt
												exit
										fi
								fi
							done
				fi
	done
}

title
selectmain
