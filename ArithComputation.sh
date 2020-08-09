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
dict[UC2]=$(( $a + $b * $c ))
dict[UC3]=$(( $a * $b + $c ))
dict[UC4]=$(( $c + $a / $b ))
dict[UC5]=$(( $a % $b + $c ))
