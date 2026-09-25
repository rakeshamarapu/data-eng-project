#!/bin/bash
LOG_FILE="data/raw/logs/access.log"
echo "== Status code counts =="
awk '{print $5}' "$LOG_FILE" | sort | uniq -c | sort -rn
echo "== Top 10 slowest requests =="
sort -t' ' -k6 -nr "$LOG_FILE" | head -10
echo "== Requests per hour =="
awk '{print $2}' "$LOG_FILE" | cut -d: -f1 | sort | uniq -c
