#!/bin/bash

LOG_FILE="input.log"
OUTPUT_FILE="summary.txt"

if [[ ! -f "$LOG_FILE" ]]; then
    echo "Log file not found: $LOG_FILE"
    exit 1
fi

# Extract all error and warning lines
grep -Ei "error|warning" "$LOG_FILE" > extracted.log

# Count errors per hour
echo "Errors per hour:" > "$OUTPUT_FILE"
grep -oE "[0-9]{2}:[0-9]{2}" extracted.log | cut -d ':' -f1 | sort | uniq -c >> "$OUTPUT_FILE"

# Count total number of errors/warnings
echo -e "\nTotal errors/warnings: $(wc -l < extracted.log)" >> "$OUTPUT_FILE"
