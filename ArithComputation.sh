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

#print array
for ((i=0 ; i<${#dict[@]} ; i++))
do
echo ${nos[$i]}
done

#Descending order 
for (( i=0 ; i<${#dict[@]} ; i++ ))
do
for (( j=i+1 ; j<${#dict[@]} ; j++ ))
do
if [ ${nos[i]} -lt ${nos[j]} ]
then
temp=${nos[i]}
nos[i]=${nos[j]}
nos[j]=$temp
fi
done
done
echo "number after sort in Descending : ${nos[*]}"

#Assending order

for (( i=0 ; i<${#dict[@]} ; i++ ))
do
for (( j=i+1 ; j<${#dict[@]} ; j++ ))
do
if [ ${nos[i]} -gt ${nos[j]} ]
then
temp=${nos[i]}
nos[i]=${nos[j]}
nos[j]=$temp
fi
done
done
echo "number after sort in Assending : ${nos[*]}"
