#!/bin/bash
array=$(seq 1 20)
array[0]=29
array2=(1 2 3 4 5 6 7 8 9 10)
array3=([0]=1 [1]=2 [2]=3 [3]=4 [4]=5 [5]=6 [6]=7 [7]=8 [8]=9 [9]=10)
echo ${array[@]}
args=("$@")
echo ${args[@]}
echo $@
echo $#