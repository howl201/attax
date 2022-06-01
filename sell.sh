enter="
"
mapmenu1() {
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
echo -n -e "\033[16A"
echo -n -e "\033[3C"
move
}
mapmenu2() {
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
	echo -n -e "\033[14A"
	echo -n -e "\033[5C"
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
	echo -n "   "
	echo -e "\033[5B"
	echo [0m	
}
point=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
x=0
y=0
h=0
b=7
move() {
	echo -n -e "\033[1C"
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
										echo -n [42m "  "
								fi
								echo -e -n "\033[2A"
								echo -e -n "\033[3D"
								echo -n [44m "  "
								y=$((y-1))
							elif [  "$input" = "B"  ] && [  $y -lt $b  ]
								then
								echo -e -n "\033[3D"
								if [  ${point[$((y*8+x))]} == 0  ]
									then
										echo -n [0m "  "
								elif [  ${point[$((y*8+x))]} == 1  ]
									then
										echo -n [42m "  "
								fi
								echo -e -n "\033[2B"
								echo -e -n "\033[3D"
								echo -n [44m "  "
								y=$((y+1))
							elif [  "$input" = "C"  ] && [  $x -lt $b  ]
								then
								echo -e -n "\033[3D"
								if [  ${point[$((y*8+x))]} == 0  ]
									then
										echo -n [0m "  "
								elif [  ${point[$((y*8+x))]} == 1  ]
									then
										echo -n [42m "  "
								fi
								echo -e -n "\033[1C"
								echo -n [44m "  "
								x=$((x+1))
							elif [  "$input" = "D"  ] && [  $x -gt $h  ]
								then
								echo -e -n "\033[3D"
								if [  ${point[$((y*8+x))]} == 0  ]
									then
										echo -n [0m "  "
								elif [  ${point[$((y*8+x))]} == 1  ]
									then
										echo -n [42m "  "
								fi
								echo -e -n "\033[7D"
								echo -n [44m "  "
								x=$((x-1))
						fi
					fi
				elif [  "$input" = "$enter"  ] && [  ${point[$((y*8+x))]} == 0  ]
					then
					point[$((y*8+x))]=1
			fi
								
		done
}
mapmenu1
