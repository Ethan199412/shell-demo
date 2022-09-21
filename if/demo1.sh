#!/bin/bash 这句话不是注释，因为有时 shell 会嵌套其他语言
a=1
[ -n "$a"==1 ] && echo yes || echo no
# a 是 1 吗，如果是打印 yes，否则 no, -n 的意思是有值 [] 前后一定要有空格