#!/bin/bash

# Summary: This script will change a user's password.
#
#
# USAGE: $ chgpass -[option] [argument]
# options:
# -u [username]	Specifies the username for which you want to change the
#				password. For instance, if there was a user whose username was
#				j_smith, the correct command usage would be:
#
# 				$ chgpass -u j_smith
#
# 				NOTE: Only Admin has the ability to use this option! Regular
#				users will be rejected by default if they specify the -u option!
#
# Alternatively, if no [option] is specified, it is assumed you want to
# change your own password, and will prompt for and validate your own (current)
# password before asking you to enter your new password.
