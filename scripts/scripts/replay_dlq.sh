#!/bin/bash

DLQ_FILE="dlq.txt"

if [ ! -f "$DLQ_FILE" ]; then
  echo "DLQ file not found!"
  exit 1
fi

echo "Starting DLQ replay..."

while IFS= read -r message
do
  echo "Replaying: $message"
done < "$DLQ_FILE"

echo "Done!"
