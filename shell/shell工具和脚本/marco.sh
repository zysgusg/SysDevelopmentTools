#!/usr/bin/env bash

export saved_path=""
function marco(){
	saved_path=$(pwd)
	echo ${saved_path}
}
function polo(){
	if [[ -n "${saved_path}" ]]; then
		cd "${saved_path}"
	else
		echo 'did not have marco path'
	fi
}
