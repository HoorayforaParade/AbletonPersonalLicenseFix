#!/bin/bash

# Bash Script for removing all -licenseserver option in Options.txt files for Ableton Live.
# This will allow users to use their own license with Ableton without deleting everything nor look for the file themselves.

# Directory path to Ableton preferences folder. Where each version has their own directory
path="/Users/$USER/Library/Preferences/Ableton"

# Allow user to select the level of deletion of the licenser server option.

echo "Please enter your level of deletion"

read choice

echo choice

# Loop through the Ableton Live version folders. Find the Options file and replaces the license server line.
for dir in "$path"/* ; do
	[ -d "$dir" ] || continue
	
	# Rename file so license server option doesn't run
	if [["$choice" == "1"]]; then
		echo 3
		#mv "$dir"/Options.txt "$dir"/Options.txt.bak
	fi
	
	# Change the license server line, Save original with .bak postfix to roll back if user needs to.
	if [["$choice" == "2"]]; then
		echo 3
		#sed -i '.bak' -r -e 's/-[Ll]icenseserver//g' "$dir"/Options.txt
	fi
	
	# Print each option.txt and choose which lines to delete
	if [["$choice" == "3"]]; then
		echo 3
		#sed -i '.bak' -r -e 's/-[Ll]icenseserver//g' "$dir"/Options.txt
	fi
	
done
