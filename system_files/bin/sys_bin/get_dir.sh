#!/bin/bash

get_shell_dir() {
	working_dir="$(cat "$root_dir/system_files/bin/sys_bin/.current_dir")"
	IFS='/'
	read -ra ADDR <<< "$working_dir"
	root_dir_ctr=0
	this_dir=""
	for i in "${ADDR[@]}"; do
		if ((root_dir_ctr == 1)); then
			this_dir="$this_dir$i"
			root_dir_ctr=$((root_dir_ctr + 1))
		elif ((root_dir_ctr > 1)); then
			this_dir="$this_dir/$i"
		fi
		if [[ "$i" == "file_system" ]]; then
			root_dir_ctr=$((root_dir_ctr + 1))
			this_dir="/"
		fi
	done
	echo -n "$this_dir"
}
