#!/bin/bash

# 这里的等于号前后一定不能有空格
date=$(date +%y%m%d)

# du 显示文件或文件夹的大小，如果没有 -sh 会导致没有单位
size=$(du -sh /etc | awk '{print $1}')
echo $date $size

if [ -d ./zip ] 
# 看起来这个 then 要单起一行
    then
        echo "Date is ${date}" > ./db.txt
        echo "size is ${size}" >> ./db.txt
        tar -zcf ./zip/etc_${date}.tar.gz /private/etc ./db.txt &> ./log.txt
        rm -rf ./db.txt
    else
        mkdir zip
        echo "Date is ${date}" > ./db.txt
        echo "size is ${size}" >> ./db.txt
        tar -zcf ./zip/etc_${date}.tar.gz /private/etc ./db.txt &> ./log.txt
        rm -rf ./db.txt
fi