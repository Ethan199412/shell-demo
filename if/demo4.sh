#!/bin/bash

node_exist=$(lsof -i:3009 | wc -l)
echo $node_exist
if [ $node_exist -ge 1 ]
    then
        echo "node is ok" >> ./log.txt
    else
        node server.js & >> ./log.txt
        echo "$(date) restart node" >> ./log.txt
fi
