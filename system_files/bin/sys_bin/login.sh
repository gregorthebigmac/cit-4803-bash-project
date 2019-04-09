#!/bin/bash

# This script will serve as the login screen

# High level description:
# 1. Prompt user for username.
#	a. I think we should take the Linux approach to this and ask for username,
#		ask for password, but don't validate the username and password
#		separately, validate them together. This allows for greater security.
# 2. Prompt user for password.
#	a. Check username. Is it valid?
#		1. YES	-> check password. Is it valid?
#			a. YES	-> run main.sh
#			b. NO	-> fail with message and run login.sh
#		2. NO	-> fail with message and run login.sh