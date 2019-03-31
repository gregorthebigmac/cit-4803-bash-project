#!/bin/bash

# this is a one-time use script for initial setup of the admin account.

# High Level Description:
# 1. Prompt the admin to create a username
user_is_valid=false
while [ $user_is_valid == false ]; do
  echo "Usernames MUST be all lowercase"
  echo "Usernames may NOT contain spaces or special characters."
  echo "Please enter your new username:"
  read username
  echo "You put $username. Is this correct? y/n"
  read confirm
  if [ $confirm == "y" ] || [ $confirm == "Y" ]; then
	# 1a. It CANNOT be "admin" or "root" or "user"
	# 1b. It CANNOT contain spaces or special characters
    pattern=" |'"
    if [[ $username =~ [A-Z] ]]; then
	  echo "You entered $username. Usernames CANNOT contain uppercase letters. Try again."
	elif [[ $username =~ $pattern ]]; then
	    echo "Usernames CANNOT contain spaces! And don't think you can trick me by putting it in quotes! Try again."
	elif [[ $username == *"admin"* ]]; then
	  echo "Your username cannot be \"admin\", nor can it *contain* the word \"admin\". Try again."
	elif [[ $username == *"root"* ]]; then
	  echo "Don't make your username \"root\" or contain root in the name in any way. That's too easy to guess. Try again."
	elif [[ $username == *"user"* ]]; then
	  echo "I thought you were trying to keep people from guessing your username? Don't use \"user\" as a username. Try again."
	elif [[ $username == *['!'@\#\$%^\&*()_+]* ]]; then
	  echo "What part of NO SPECIAL CHARACTERS did you not understand? Try again."
	else
	  user_is_valid=true
	  echo "Great! Your username is now $username. Now let's create a password..."
	fi
  else echo "Okay, try again."
  fi
done

# 2. Prompt the admin to create a password
#	b. [todo] should we enforce tough password?
#		1. Kyle: I'm leaning towards YES
# 3. Save the user to file
#	a. store username
#	b. store password
#		1. [todo] should we encrypt (or otherwise obfuscate) it?
#	c. store permissions (basically ALL is permitted for admin)
# 4. run main.sh
