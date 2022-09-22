#!/bin/bash
# shanghai 1, guangzhou 2, chengdu 3

read -t 30 -p "please input your choice: " cho

case "$cho" in
    "1")
        echo "shanghai flight were sold out!"
        ;;
    "2")
        echo "guangzhou flight were sold out!"
        ;;
    "3")
        echo "chengdu flight were sold out!"
        ;;
    *)
        echo "error"
        ;;
esac
