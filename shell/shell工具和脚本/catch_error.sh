#!/usr/bin/env bash
counter=0
out="output.log"
err="error.log"
while true;do
	./error.sh > "$out" 2> "$err"
	if [[ $? -ne 0 ]]; then
		echo "error at $((counter+1)) times"
		echo "output"
		cat "$out"
		echo "error"
		cat "$err"
		break
	fi
	((counter++))
done


