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

x=$(( $a+$b*$c ))
y=$(( $a*$b+$c ))
z=$(( $c+$a/$b ))
w=$(( $a%$b+$c ))
