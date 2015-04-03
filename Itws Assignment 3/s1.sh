#!/bin/sh
for i in {1..20}
do
cp song$i.lyric test.list
sed "s/ /_/g" test.list>test1.list
mv song$i.lyric `awk -F":_" ' NR==1 { print $2 }' test1.list`.lyric
done
rm -rf *.list



