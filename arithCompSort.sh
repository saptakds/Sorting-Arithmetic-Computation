#!/bin/bash -x
read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c
compute1=$(($a+$b*$c))
compute2=$(($a*$b+$c))
