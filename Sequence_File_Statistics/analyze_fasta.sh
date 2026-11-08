#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: ./analyze_fasta.sh sequences.fasta"
    exit 1
fi

file="$1"

if [ ! -f "$file" ]; then
    echo "Error: File not found!"
    exit 1
fi

sequences=$(grep -c '^>' "$file")
lines=$(wc -l < "$file")
headers=$(grep -c '^>' "$file")
size=$(stat -c%s "$file")

echo "FASTA File Statistics"
echo "---------------------"
echo "Number of sequences: $sequences"
echo "Number of lines: $lines"
echo "Number of headers: $headers"
echo "File size: $size bytes"