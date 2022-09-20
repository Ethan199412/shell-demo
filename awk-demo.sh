df -h | grep "s5s1" | awk '{print $1 "\t" $2 "\t" $5}'
# df 命令是看磁盘空间，ask 按某种规则打印