#!/bin/bash

set -o pipefail		# trace error through pipes
set -o errtrace		# trace error through "time command" and other functions

# Function for catching and printing errors through pipes
	# The syntax for calling this to correctly output errors is:
	# trap 'error ${LINENO} ${?}' ERR
error() {
	job="$0"
	last_line="$1"
	last_error="$2"
	date_d=$(date +"%Y-%m-%d")
	time_t=$(date+"%T")
	error_file="$root_dir/file_system/log/errors/$date_d.log"
	if test -f "$error_file"; then
		echo ""
	else touch "$error_file"
	fi
	echo "$date_d $time_t: ERROR in ${job} : line ${last_line} : with exit code ${last_error}" >> "$error_file"	
}
