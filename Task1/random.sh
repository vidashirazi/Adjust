#!/bin/bash
awk 'BEGIN {
	split("1,2,3,4,5,6,7,8,9,10",num,",")

	srand()
	for (i=10;i>0;i--) {
		numselect=int(1+rand() *i)
		print num[numselect]
		num[numselect]=num[i]
	}
}'

