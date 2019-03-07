# Description (from the excel doc)

1. Create a set of scripts for an IT organization (user creation, role creation, files read/write, search ability)
2. Multiple scripts would be needed for the organization and each group can decide how many scripts are required to have a working system in place
3. Script to prompt an admin user to add new users to the system and generate a default password for logging in
4. The admin will also assign a user role for access.
5. Roles should be defined for
	1. Power User
	2. General User
	3. Intern User
6. Script or mechanism for users to log in using the default password and change their password
7. Create the following separate directory areas for your system 1) General Files 2) Project Files 3)Financial files - these can be created manually
8. Access to the directory details (which files are in the directory) is to be granted by the following roles based mapping
9. Once a user of a specific role has logged in, the user can request to view the files in the directory it has access to
10. All users can create new text files and add text to them in the specific directories/areas where they are authorized
11. Only Power users can delete any file in any directory
12. All users can also scan file text to look for log errors with a text / word marked as "ERROR:" + any error message and display them
13. You may create those error messages in the text files manually or create them through the system ability of creating text files and adding text to them

## Hints

1. You would need to use linux commands to create directories from your scripts, create text files, read and write from those text files, may need to use Arrays and utilize the grep function to do file search
2. Each group will present its Bash User Access System (BUA) with the help of slides and a demo for a 20-25 minute slot
3. Presentation should include workflow of all your scripts
4. Walkthrough and explain each of the scripts and how the logic is built
5. If a live demo can't be setup a recorded video of the demo part can also be presented, it needs to be detailed enough to cover all aspects along with the presentation
6. Other groups will contribute to the presentation by asking questions about your design for further analysis (A graded activity)
