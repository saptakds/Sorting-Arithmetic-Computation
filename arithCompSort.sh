#!/bin/bash -x
read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c
compute1=$(($a+$b*$c))
compute2=$(($a*$b+$c))
compute3=$(echo "scale=2;$c+$a/$b" | bc)
compute4=$(($a%$b+$c))
declare -A computes
computes[1]=$compute1
computes[2]=$compute2
computes[3]=$compute3
computes[4]=$compute4
valArr=()
index=0
for i in ${computes[@]}
do
	valArr[$index]=$i
	((index++))
done
for j in ${computes[@]}
do
	echo $j
done | sort -nr
