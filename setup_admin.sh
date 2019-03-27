#!/bin/bash

# this is a one-time use script for initial setup of the admin account.

# High Level Description:
# 1. Prompt the admin to create a username
#	a. It CANNOT be "admin" or "root"
# 2. Prompt the admin to create a password
#	b. [todo] should we enforce tough password?
#		1. Kyle: I'm leaning towards YES
# 3. Save the user to file
#	a. store username
#	b. store password
#		1. [todo] should we encrypt (or otherwise obfuscate) it?
#	c. store permissions (basically ALL is permitted for admin)
# 4. run main.sh