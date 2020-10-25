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


echo "WELCOME TO FLIP COIN SIMULATION PROBLEM"
function flipcoin() {
head=0;
tail=0;
while [ "$head" -lt 21 ] && [ "$tail" -lt 21 ]
do

        a=$(( RANDOM%2 ));
        if [ $a == 1 ];
        then
                head=$(($head+1))
        else
                tail=$(($tail+1))
        fi
done

if [ "$head" -eq 21 ] && [ "$tail" -eq 21 ]
then
        if [ "$head" -eq 21 ]
        then
                while [ "$(($head-$tail))" -gt 2 ]
                do
                        tail=$(($tail+1))
                done
        else
                while [ "$(($tail-$head))" -gt 2 ]
                do
                        head=$(($head+1))
                done
        fi
elif [ "$head" -eq 21 ]
then
        echo "Head won by" $(($head-$tail))
else
        echo "Tail won by" $(($tail-$head))
fi
echo "Final head value" $head
echo "Final tail count" $tail
}
flipcoin



echo "WELCOME TO FLIP COIN COMBINATION"
function flipcoincombination() {
head=0;
tail=0;
read -p "Enter number of flip required " n
for (( i=0; i<n; i++ ))
do
        singlet=$(( RANDOM%2 ));
        if [ $singlet == 1 ];
        then
                head=$(($head+1))
        else
                tail=$(($tail+1))
        fi
        d=$(( RANDOM%4 ));
        case $doublet in
                0) headhead=$(($headhead+1))
                        ;;
                1) headtail=$(($headtail+1))
                        ;;
                2) tailhead=$(($tailhead+1))
                        ;;
                3) tailtail=$(($tailtail+1))
                        ;;
                *) echo "Invalid Combination"
                        ;;
        esac
        t=$(( RANDOM%7 ));
        case $triplet in
                0) headheadhead=$(($headheadhead+1))
                        ;;
                1) headheadtail=$(($headheadtail+1))
                        ;;
                2) headtailhead=$(($headtailhead+1))
                        ;;
                3) headtailtail=$(($headtailtail+1))
                        ;;
                4) tailheadhead=$(($headtailhead+1))
                        ;;
                5) tailheadtail=$(($tailheadtail+1))
                        ;;
                6) tailtailhead=$(($tailtailhead+1))
                        ;;
                7) tailtailtail=$(($tailtailtail+1))
                        ;;
                *) echo "Invalid combination"
                        ;;
        esac
done
}
flipcoincombination
echo "Number of head win" $head
echo "Number of tail win" $tail
echo "Number of headhead combination " $headhead
echo "Number of headtail combination " $headtail
echo "Number of tailhead combination " $tailhead
echo "Number of tailtail combination " $tailtail
echo "Number of headheadhead combination " $headheadhead
echo "Number of headheadtail combination " $headheadtail
echo "Number of headtailhead combination " $headtailhead
echo "Number of headtailtail combination " $headtailtail
echo "Number of tailheadhead combination " $tailheadhead
echo "Number of tailheadtail combination " $tailheadtail
echo "Number of tailtailhead combination " $tailtailhead
echo "Number of tailtailtail combination " $tailtailtail

