#!/bin/bash

# FASTA Terminal Analyzer

# Find project directory
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define file paths
INPUT="$PROJECT_DIR/data/sequences.fasta"
REPORT="$PROJECT_DIR/results/analysis_report.txt"

# Check whether FASTA file exists
if [ ! -f "$INPUT" ]; then
    echo "Error: FASTA file not found!"
    exit 1
fi

# Count sequences
SEQUENCE_COUNT=$(grep -c '^>' "$INPUT")

# Count total lines
LINE_COUNT=$(wc -l < "$INPUT")

# Count total DNA bases
BASE_COUNT=$(awk '!/^>/ { total += length($0) } END { print total+0 }' "$INPUT")

# Count file size in bytes
FILE_SIZE=$(wc -c < "$INPUT")

# Save analysis report
{
    echo "===== FASTA ANALYSIS REPORT ====="
    echo ""
    echo "File name: sequences.fasta"
    echo "Number of sequences: $SEQUENCE_COUNT"
    echo "Total lines: $LINE_COUNT"
    echo "Total DNA bases: $BASE_COUNT"
    echo "File size: $FILE_SIZE bytes"
    echo ""
    echo "Sequence Headers:"
    grep '^>' "$INPUT"
    echo ""
    echo "===== ANALYSIS COMPLETE ====="
} > "$REPORT"

echo "Analysis completed successfully!"
echo "Report saved to results/analysis_report.txt"