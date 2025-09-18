#!/usr/bin/env bash
pidwait () {
	local pid="$1"
	while kill -0 "$pid" 2>/dev/null; do 
	sleep 1
done	
}
