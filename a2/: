#!/bin/bash

if ["$#" -ne 1]; then
	echo "Usage: tempcleaner <directory>"
	exit 1
fi
DIR=$1

if [!-d "$DIR"]; then
	echo "Error: $DIR is not a directory"
	exit 1
fi
echo -n "Enter the age of files to delete(in days): "
read DAYS

echo "This will delete all files older than $DAYS days in $DIR."
echo -n "Are you sure? (y/n): "
read CONFIRM

if ["$CONFIRM" != "y"]; then
	echo "Operation cancelled"
	exit 1+
fi
LOGFILE="deleted_files.log"
find "$DIR" -type f -mtime +$DAYS -print -delete > $LOGFILE
echo "Deleted files have been logged to $LOGFILE."
echo "Operation completed."
