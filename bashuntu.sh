#!/bin/bash

# This serves as the main entry point to the script.

# High level description:
# 1. Check file for admin account
#	a. Does account "admin" exist?
#		1. YES	-> admin account needs to be created. Run setup_admin.sh
#		2. NO 	-> admin account has been created. Run login.sh