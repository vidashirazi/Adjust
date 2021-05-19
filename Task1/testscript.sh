#!/bin/bash
i=0
b=(0 0 0 0 0 0 0 0 0 0)
 
while read -r a 
do
	if [ -n $a ] && [ "$a" -eq "$a" ] && [ $a -le 10 ] && [ $a -ge 1 ] 2>/dev/null
	then
		if [ $i -ge 10 ] 
		then
		        echo "Test faild: Numbers are greater than ten ones!"
		        exit
		else
		b[$((a-1))]=$((b[$((a-1))]+ 1))
		i=$((i+1))
		fi
	else
		echo "Test faild: Output is not number or not in range!"
	exit
	fi

done < <(./random.sh)


for (( j=0; j<=9; j++ ))
do
        if [ ${b[$j]} -ne 1 ]
		then
		echo " Test faild: Number(s) is missing or exist more than one time"
		exit

	fi
done
echo "TEST SUCCESSFUL"




