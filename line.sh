
while read line
do
	var="$var""$line"	
done < userid1.txt
echo $var

