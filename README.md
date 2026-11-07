FASTA Terminal Analyzer

Project Description
A Linux-based bioinformatics mini project using Bash scripting to analyze FASTA files.

Features
- Counts the number of DNA sequences.
- Counts total lines in the FASTA file.
- Calculates total DNA bases.
- Calculates file size in bytes.
- Extracts FASTA sequence headers.
- Saves results in a text report.

Technologies Used
- Linux (Ubuntu)
- Bash scripting
- Visual Studio Code
- Git and GitHub

Project Structure
```text
fasta-terminal-analyzer/
├── data/
│   └── sequences.fasta
├── results/
│   └── analysis_report.txt
├── commands.sh
└── README.md
```

How to Run
```bash
chmod +x commands.sh
./commands.sh
```

Input Data
Five synthetic DNA sequences created for testing.

Output
The analysis report is saved in:
`results/analysis_report.txt`