#!/bin/bash
#https://unix.stackexchange.com/questions/226267/process-count-of-each-user-in-ps-aux-command

echo "Zadanie d"

ps aux | awk \
'NR>1{cpuVal[$1] += $3; memVal[$1] += $4;} END {for(id in cpuVal)printf "%s \t\t using %d cpu \t and %d RAM\n",id,cpuVal[id], memVal[id]}
'
