#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/syslog "error"

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# Do-while style loop to ensure a non-empty file is provided
while true; do
    if [ -z "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; then
        echo "Error: File '$LOGFILE' not found or is empty."
        read -p "Please provide a valid log file path (e.g., /var/log/dmesg): " LOGFILE
    else
        break
    fi
done

# Read the file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------------"
echo "Last 5 occurrences of '$KEYWORD':"
# Extract and print the last 5 matching lines
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
