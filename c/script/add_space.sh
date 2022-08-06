str=$1
for k in `seq 1 $(($2-${#str}))`
do
	str=" ${str}"
done

return_val=${str}
