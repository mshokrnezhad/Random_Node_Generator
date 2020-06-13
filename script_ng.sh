#!/bin/bash

g++ -g main.cpp -o main.out

for n in `seq 1 30`;
do	
	for itr in `seq 1 10`;
	do	
		echo "n=$n,iteration=$itr"
		echo "n=$n,iteration=$itr" >> R01_LoN.txt
		./main.out $n	
		sleep 1
	done 
done

