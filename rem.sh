read asdf
len=`expr length $asdf`
cur=`expr 15 - $len`
echo $cur
for ((var=0 ; var < $cur ; var++));
	do
		echo "1"
	done
