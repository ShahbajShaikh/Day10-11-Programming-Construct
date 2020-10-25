#!/bin/bash -x

echo "Welcome to Programming Construct."

echo "Welcome to Arithmatic Computation & Sorting Program"
read -p "Take three inputs a,b,c :" a b c
equation1=`expr $a + $b \* $c`
echo "Result of first equation: " $equ1

equation2=`expr $a \* $b + $c`
echo "Result of second equation:" $equ2

equation3=`expr $c + $a / $b`
echo "Result of third equation: " $equ3

equation4=`expr $a % $b + $c`
echo "Result of fourth equation" $equ4

#Storing the results in Dictionary
declare -A Arithematic
Arithematic[firstequation]=$equation1
Arithematic[secondequation]=$equation2
Arithematic[thirdequation]=$equation3
Arithematic[fourthequation]=$equation4

echo "The results in Dictionary:" ${Arithematic[@]}

#Read the Dictionary value to Array
i=1
for(( i=1; i<=4; i++ ))
do
        array[i]=${Arithematic[$i]}
        echo ${array[i]}
done

echo "Decending sorted Array"
printf "%s\n" "${Arithematic[@]}" | sort -nr
echo "Ascending sorted array"
printf "%s\n" "${Arithematic[@]}" | sort -n

