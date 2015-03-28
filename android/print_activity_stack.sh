#!/usr/bin/bash

if [ $# -gt 1 ]; then
    echo "Rationale : List the activity stack for all tasks of the given package."
    echo "Usage     : $(basename $0)"
    echo "Usage     : $(basename $0) <package>"
    exit 1
fi

if [ $# -eq 0 ]; then
	adb shell dumpsys activity | grep -i run
else
	adb shell dumpsys activity | grep -i run | grep $1
fi
