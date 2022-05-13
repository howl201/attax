read word
while read line
do
	if [  "$line" = "$word"  ]
		then
			echo "right"
			exit
	else
			echo "false"
			exit
	fi
done < userid1.txt
