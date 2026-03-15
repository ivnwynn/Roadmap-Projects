#!/bin/bash

echo "Starting to make archive of $archive_dir..."

log_dir="$1"

if [ -z "$log_dir" ]; then
	echo "Usage: log-archive <log-directory>"
	exit 1 
fi

archive_dir="./archive"
mkdir -p "$archive_dir"

timestamp=$(date +"%Y%m%d%H%M%S")
tar -czvf "$archive_dir/logs_$timestamp.tar.gz" -c "$log_dir"

echo "$(date): Archived $log_dir to $archive_dir/logs_$timestamp.tar.gz" >> archive_log.txt

