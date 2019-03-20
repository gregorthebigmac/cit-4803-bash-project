#!/bin/bash

# This will serve as the main loop of the script

# High level description:
# 1. Print welcome splash, a few helpful commands and how to access "help"
# 2. main_loop()
#	a. Get user command and args. Is command valid?
#		1. YES	-> Check args. Are they valid?
#			a. YES	-> Check permissions. Does the user have permissions to perform the action?
#				1. YES	-> Run command and args (see commands.txt for descriptions)
#				2. NO	-> Fail with "access denied" message.
#			b. NO	-> Fail with [command] usage page (see commands.txt)
#		2. NO	-> Fail with message "[command] not found."
#	b. continue main_loop()