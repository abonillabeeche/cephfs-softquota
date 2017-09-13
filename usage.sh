#!/bin/bash
# source our user Array

source /root/usermap

#For each key in the usermap, check the quota value and send an e-mail if exceeded.

for homedir in ${!USERMAP[@]};
do

if [ $( getfattr -d -m ceph.dir.rbytes /mnt/$homedir | grep -o '[0-9]*' ) -gt ${USERMAP[$homedir]} ]; 
then echo | mail -s "Home Directory for user $homedir exceeded quota" $homedir@email.com adminEmail@email.com
sleep 1
fi
done
