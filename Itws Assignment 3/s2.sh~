#!/bin/sh
for i in *.lyric 
do
awk -F":" ' NR==1 { print $2 }' "$i"
done >>test.list
sort test.list >test2.list
nl -n rz -w2 -s". " test2.list >Tracklist.list
rm -r test.list test2.list
 

