#!/bin/sh

error="usage sw init<project name>|xcode|test"

if [ "$#" -eq 0 ]; then
	echo "$error"
else
	if [ "$1" = 'init' ]; then
		if [ "$#" -gt 2 ]; then
			echo "$error"
		else
			mkdir "$2" && cd "$2" && swift package init && swift package generate-xcodeproj
		fi
	elif [ "$1" = 'test' ]; then
		swift test
	else
		echo "$1 is not a valid command"
	fi
fi
