#!/bin/bash

echo "Zadanie a"

ps aux | awk \
	'
{
    	print "User " $1 " - process " $11 " ( CPU: " $3 "  MEM: " $4 " )"
}
'
