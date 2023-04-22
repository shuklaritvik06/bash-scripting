#!/bin/bash

# List

for i in $(seq 1 20)
do
printf "%d " $i
done

for i in a b c d
do
for j in $(seq 1 20)
do
printf "%s %d" $i $j
done
done

# Range

for i in {1..20}
do
echo $i
done

# Array

for i in 1 2 3 4 5
do
echo $i
done

# Steps

for i in {1..20..3}
do
echo $i
done

# Expressions

for ((i=0;i<5;i++))
do
echo $i
done

# while

x=0
while [ $x -lt 20 ]
do
echo $x
x=$(( $x+1 ))
done

while read line
do
echo $line
break
done

# until

counter=0

until [ $counter -gt 5 ]
do
  echo $counter
  ((counter++))
done

while IFS="" read -r line
do
echo $line
done < ./temp.txt