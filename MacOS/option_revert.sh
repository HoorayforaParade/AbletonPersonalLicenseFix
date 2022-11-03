#!/bin/bash

# This is a bash script for testing out my license removal script. Used to revert the back to being the primary.
# Original script makes a backup of the options file then edits to remove the -licenseserver line case insensitive

#Directory path to Ableton preferences folder. Where each version has their own directory
path="/Users/$USER/Library/Preferences/Ableton"

#Loop through the Ableton Live version folders. Find the Options file and replaces the license server line.
for dir in "$path"/* ; do
	[ -d "$dir" ] || continue

	# Remove Options file without -licenseserver then rename .bak to be Options.txt
	rm "$dir"/Options.txt
	mv "$dir"/Options.txt.bak "$dir"/Options.txt 
done
