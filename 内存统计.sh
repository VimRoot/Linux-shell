#! /bin/bash

sum=0
for mem in `ps aux |awk '{print $6}' |grep -v 'RSS'`
do
  sum=$[$sum+$mem]
done
echo "this is $sum""k"
