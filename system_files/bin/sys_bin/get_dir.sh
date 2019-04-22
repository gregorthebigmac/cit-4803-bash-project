#!/bin/bash

get_shell_dir() {
	working_dir="$(cat "$root_dir/system_files/bin/sys_bin/.current_dir")"
	IFS='/'
	read -ra ADDR <<< "$working_dir"
	root_dir_ctr=0
	this_dir=""
	for i in "${ADDR[@]}"; do
		if ((root_dir_ctr == 0)); then
			if [[ "$i" == "file_system" ]]; then
				root_dir_ctr=$((root_dir_ctr + 1))
				this_dir="/"
			fi
		else this_dir="$this_dir$i"
		fi
	done
	echo -n "$this_dir"
}
