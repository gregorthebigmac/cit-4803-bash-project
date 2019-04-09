#!/bin/bash

# This serves as the main entry point to the script. For the time being (i.e. for the group's benefit)
# I'm going to leave the high-level "structure and flow" comments in place, with the code that does that
# comment's task immediately after. For instance, if a comment read "echo result back to user" then the code
# would look like:

# Echo result back to user
#echo "$result"

# Okay, onto the script itself.

# High level description:
does_admin_account_exist=$(cat users.txt | grep "admin")	# 1. Check file for admin account

if [[ $does_admin_account_exist == *"admin"* ]]; then	# 2. Does account "admin" exist?
  echo "WARNING! Admin account has not been setup yet! Creating Admin account now..."
  ./setup_admin.sh	# 2a. YES	-> admin account needs to be created. Run setup_admin.sh
else
  echo "Initializing shell...[ok]"
  echo "Proceeding to login screen..."
  ./login.sh	# 2b. NO 	-> admin account has been created. Run login.sh
fi
