#!/bin/bash
# Append timestamp and username to log.txt
echo "Current Date and Time: $(date) | User: $GITHUB_ACTOR" >> log.txt

# Count total entries and update log_count.txt
count=$(wc -l < log.txt)
echo "Total log entries: $count" > log_count.txt