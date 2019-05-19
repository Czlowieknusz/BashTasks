#!/bin/bash

echo "Zadanie b"

ps aux | awk \
'
{
	split($10, times, ":");
	if (times[1] >= 1)
	{
    		print "User " $1 " - process " $11 " time " $10;
	}
}
'
