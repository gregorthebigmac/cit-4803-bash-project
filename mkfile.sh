#!/bin/bash

# this script will check the user's permissions and the directory permissions to ensure that the user has the authority to create files in the directory specified.
# If the user has permission to create the file, AND the file does not exist, then this script will run:
# $ touch [filename]