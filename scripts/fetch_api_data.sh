#!/bin/bash
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
curl -s "https://jsonplaceholder.typicode.com/posts" \
  -o "data/raw/api/posts_$TIMESTAMP.json"
echo "Saved posts_$TIMESTAMP.json"
