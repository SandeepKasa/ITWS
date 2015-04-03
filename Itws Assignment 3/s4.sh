#!/bin/sh
for i in *.lyric
do
awk ' NR>=5 {print $0}' "$i" > test1
awk ' NR<5 {print $0}' "$i" > test2
md5sum test1|awk '{print $1}'>>test2
mv test2 "`echo "$i"| awk -F"." '{ print $1 }'`".encrypted

rm -r test1 test2
done
