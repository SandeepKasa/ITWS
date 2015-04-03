#!/bin/sh
x=`awk -F"$" 'NR==2{print $2}' stats.memo`
count=0
for i in *.encrypted
do
y=`awk -F"," 'NR==2{print NF}' "$i"`
z=`awk -F"," 'NR==3{print NF}' "$i"`
let count=$count+$y+$z
done
a=`echo "$x*0.5"|bc -l `
b=`echo "$a/$count+1"|bc -l`
echo '$'$b > payday.dreday

