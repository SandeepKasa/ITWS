#!/bin/sh
awk '{print $2}' stats.csv > test1
c=`awk '{count+=$1} END {print count}' test1 `
echo $c > stats.memo;
k=`echo "$c*0.99"|bc -l `
echo '$'$k >> stats.memo
sort -g test1> test2
grep `tail -1 test2` stats.csv |awk -F"," ' NR==1 {print $1}' >> stats.memo
grep `head -1 test2` stats.csv |awk -F"," ' NR==1 {print $1}' >> stats.memo
rm -r test1 test2
