#!/bin/bash

fruits[0]="Mangoes";
fruits[1]="Oranges";
fruits[2]="Apples";
fruits[3]="Grapes";

echo "All elements of array : "${fruits[@]};
echo "Size of array : " ${#fruits[@]};

echo "Printing index 1 element : " ${fruits[1]};

echo "For loop array"
for ((i=0;i<${#fruits[@]};i++))
do
	echo ${fruits[i]}
done
