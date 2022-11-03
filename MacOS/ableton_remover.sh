#!/bin/bash

# Bash Script for removing all -licenseserver option in Options.txt files for Ableton Live.
# This will allow users to use their own license with Ableton without deleting everything nor look for the file themselves.

#Directory path to Ableton preferences folder. Where each version has their own directory
path="/Users/$USER/Library/Preferences/Ableton"

#Loop through the Ableton Live version folders. Find the Options file and replaces the license server line.
for dir in "$path"/* ; do
	[ -d "$dir" ] || continue
	
	# Rename file so license server option doesn't run
	mv "$dir"/Options.txt "$dir"/Options.txt.bak
done
