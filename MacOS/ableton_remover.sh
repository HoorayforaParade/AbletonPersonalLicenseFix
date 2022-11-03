#!/bin/bash

# Bash Script for removing all -licenseserver option in Options.txt files for Ableton Live.
# This will allow users to use their own license with Ableton without deleting everything nor look for the file themselves.

#Directory path to Ableton preferences folder. Where each version has their own directory
#path="/Users/$USER/Documents/Work/ableton_remover/"
path="/Users/$USER/Library/Preferences/Ableton"

#Loop through the Ableton Live version folders. Find the Options file and replaces the license server line.
for dir in "$path"/* ; do
	[ -d "$dir" ] || continue
	echo "$dir"/Options.txt		#Debug File Path

	#Change the license server line, Save original with .bak postfix to roll back if user needs to.
	sed -i '.bak' -r -e 's/-[Ll]icenseserver//g' "$dir"/Options.txt
done
