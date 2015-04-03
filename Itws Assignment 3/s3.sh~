 #!/bin/sh
for i in *.lyric
do
cp "$i" test1.txt
while  read line
do
sed "s/$line/*****/g" <test1.txt  > test2.txt
cp test2.txt test1.txt
done <expletives.list
cp test1.txt "$i"
cat "$i"
rm -rf  test2.txt test1.txt
done

