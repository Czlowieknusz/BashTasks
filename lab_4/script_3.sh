#!/bin/bash

echo "Zadanie c"

ps aux | awk \
'
{cpu += $3; rss += $4} END {print "cpu: " cpu " mem: " rss};
'
