enter="
"
fightmap2() {
point=(0 0 0 0 0 0 0 0 0 2 0 0 0 0 2 0 0 0 2 0 0 2 0 0 0 0 0 2 2 0 0 0 0 0 0 2 2 0 0 0 0 0 2 0 0 2 0 0 0 2 0 0 0 0 2 0 0 0 0 0 0 0 0 0)
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
	echo -e "\033[6B"
	move
}
x=0
y=0
h=0
b=7
turn1=0
turn2=0
move() {
	echo -n -e "\033[19A"
	echo -n -e "\033[10C"
	while :
		do
			read -s -N1 input
			if [  "$input" = ""  ]
				then
					read -s -n 1 input
					if [  "$input" = "["  ]
						then 
							read -s -n 1 input
							if [  "$input" = "A"  ] && [  $y -gt $h  ]
								then
								echo -e -n "\033[3D"
								if [  ${point[$((y*8+x))]} == 0  ]
									then
										echo -n [0m "  "
								elif [  ${point[$((y*8+x))]} == 1  ]
									then
										echo -n [44m "  "
								
								elif [  ${point[$((y*8+x))]} == 2  ]
									then
										echo -n [43m "  "
								fi
								echo -e -n "\033[2A"
								echo -e -n "\033[3D"
								echo -n [47m "  "
								y=$((y-1))
							elif [  "$input" = "B"  ] && [  $y -lt $b  ]
								then
								echo -e -n "\033[3D"
								if [  ${point[$((y*8+x))]} == 0  ]
									then
										echo -n [0m "  "
								elif [  ${point[$((y*8+x))]} == 1  ]
									then
										echo -n [44m "  "
								elif [  ${point[$((y*8+x))]} == 2  ]
									then
										echo -n [43m "  "
								fi
								echo -e -n "\033[2B"
								echo -e -n "\033[3D"
								echo -n [47m "  "
								y=$((y+1))
							elif [  "$input" = "C"  ] && [  $x -lt $b  ]
								then
								echo -e -n "\033[3D"
								if [  ${point[$((y*8+x))]} == 0  ]
									then
										echo -n [0m "  "
								elif [  ${point[$((y*8+x))]} == 1  ]
									then
										echo -n [44m "  "
								elif [  ${point[$((y*8+x))]} == 2  ]
									then
										echo -n [43m "  "
								fi
								echo -e -n "\033[1C"
								echo -n [47m "  "
								x=$((x+1))
							elif [  "$input" = "D"  ] && [  $x -gt $h  ]
								then
								echo -e -n "\033[3D"
								if [  ${point[$((y*8+x))]} == 0  ]
									then
										echo -n [0m "  "
								elif [  ${point[$((y*8+x))]} == 1  ]
									then
										echo -n [44m "  "
								elif [  ${point[$((y*8+x))]} == 2  ]
									then
										echo -n [43m "  "
								fi
								echo -e -n "\033[7D"
								echo -n [47m "  "
								x=$((x-1))
						fi
					fi
				elif [  "$input" = "$enter"  ] && [  ${point[$((y*8+x))]} == 0  ]
					then
					point[$((y*8+x))]=1
					echo -n -e "\033[$(( 2*(8-y)+1 ))B"
					echo -n -e "\033[$(( 4*x+2 ))D"
					turn1=$((turn1+1))
					echo [0m "$turn1"
					echo -n -e "\033[$(( 2*(8-y)+2 ))A"
					echo -n -e "\033[$(( 6+4*(x+1) ))C"
			fi
								
		done
}		

fightmap2
