#!/bin/bash

LOG_FILE="$HOME/.cliplog_history.log"
LAST_CLIPBOARD=""

while true; do
    CURRENT_CLIPBOARD=$(pbpaste)

    if [[ "$CURRENT_CLIPBOARD" != "$LAST_CLIPBOARD" && -n "$CURRENT_CLIPBOARD" ]]; then
        TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
        echo "$TIMESTAMP|$CURRENT_CLIPBOARD" >> "$LOG_FILE"
        LAST_CLIPBOARD="$CURRENT_CLIPBOARD"
    fi

    sleep 5
done
