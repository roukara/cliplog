#!/bin/bash

LOG_FILE="$HOME/.cliplog_history.log"

DATE=$(date +%Y%m%d)
OUTPUT_FILE="$HOME/.cliplog/$DATE.md"
CURRENT_TIMESTAMP=$(date +%s)

if [ ! -d "$HOME/.cliplog" ]; then
    mkdir -p "$HOME/.cliplog"
fi

echo "# Clipboard History (Last 24 Hours)" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

while IFS='|' read -r TIMESTAMP CLIPBOARD_TEXT; do
    LOG_TIMESTAMP=$(date -j -f "%Y-%m-%d %H:%M:%S" "$TIMESTAMP" "+%s")
    if [[ $((CURRENT_TIMESTAMP - LOG_TIMESTAMP)) -le 86400 ]]; then
        echo "- $CLIPBOARD_TEXT" >> "$OUTPUT_FILE"
    fi
done < "$LOG_FILE"

echo "✅ Clipboard history exported to: $OUTPUT_FILE"
cat "$OUTPUT_FILE"

> "$LOG_FILE"
