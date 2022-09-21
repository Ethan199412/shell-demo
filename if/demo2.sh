#!/bin/bash
rate=$(df -h | grep "1s5s1" | awk '{print $5}' | cut -d '%' -f 1)

# if 后面也要跟空格
if [ $rate -ge 5 ]
    # 可以加入邮箱报警
    then echo "root disk is full"
fi
