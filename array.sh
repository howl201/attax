arr1=(1 2 3 4 5 6)
x=1
y=0
p=${arr1[$((y*3+x))]}
echo "$p"
arr1[$((y*3+x))]=1

p=${arr1[$((y*3+x))]}
echo "$p"
