#!/bin/bash -x
#This problem computes different Arithmetic expressions and sorts the result

echo " This problem computes different Arithmetic expressions and sorts the results "


echo "enter three input value: "
read a
read b
read c
echo "A: "$a
echo "B: "$b
echo "C: "$c
declare -A dict
dict[0]=$(( $a + $b * $c ))
dict[1]=$(( $a * $b + $c ))
dict[2]=$(( $c + $a / $b ))
dict[3]=$(( $a % $b + $c ))

#store

for (( i=0 ; i<${#dict[@]} ; i++ ))
do
nos[$i]=${dict[$i]}
done

#print array
for ((i=0 ; i<${#dict[@]} ; i++))
do
echo ${nos[$i]}
done
