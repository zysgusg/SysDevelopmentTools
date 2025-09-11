#!/usr/bin/env bash
function my_ls {
	find . -type f -print0 | xargs -d '\0' ls -lt | head -n $1
}
