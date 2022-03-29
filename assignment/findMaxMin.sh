#!/bin/bash

for ((i=0;i<10;i++))
do
	arr[$i]=$((RANDOM%900+100));
done

echo "Before sorted : "${arr[@]};

for ((i=0;i<10;i++))
do
	result=`echo $result"\n"${arr[i]} ": Index $i"`;
done

echo -e $result | sort -n;

for ((i=0;i<${#arr[@]}-1;i++))
do
	for((j=i+1;j<${#arr[@]};j++))
	do
		if [ ${arr[i]} -gt ${arr[j]} ]
		then
			temp=${arr[i]};
			arr[$i]=${arr[j]};
			arr[$j]=$temp;
		fi
	done
done

echo "After sorting : "${arr[@]};

echo "Second smallest number is : "${arr[1]};

echo "Second largest number is : "${arr[8]};
