#! /bin/bash
gpio mode 20 out
gpio mode 21 out
gpio write 20 0
gpio write 21 1
today=`date +%Y-%m-%d.%H:%M:%S`
mkdir /mnt/target/"$today"
cp /mnt/usb/* /mnt/target/"$today"
gpio write 20 1
gpio write 21 0