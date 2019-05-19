#!/bin/bash

ps aux | awk \
	'{ cpuVal += $3} END {print cpuVal}'
