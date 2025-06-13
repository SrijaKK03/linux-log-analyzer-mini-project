# Linux Log Analyzer – Mini Project

This mini project is a simple Bash script to analyze log files and generate a report of error and warning messages.

##  Files

- `log_analyzer.sh` – Main script
- `sample_log.txt` – Sample log to test the script
- `summary.txt` – Output example after script execution

##  How to Use

### 🔹 1. What is a log file?

A **log file** is just a text file with system or app messages. Example:

2025-06-13 14:02:33 ERROR Something failed in module A  
2025-06-13 14:45:10 WARNING Memory usage is high  
2025-06-13 15:12:50 ERROR Disk read failure  
2025-06-13 16:33:20 INFO System running smoothly  

You can use the given file `sample_log.txt` as your log file.

### 🔹 2. Rename the log file to `input.log`

Make sure your log file is named `input.log`
It should be in the **same folder** as the script `log_analyzer.sh`

### 🔹 3. Open Git Bash or Terminal

Use the `cd` command to move into the folder where your files are:

bash
cd path/to/your/folder

Example:
bash
cd ~/Downloads

### 🔹 4. Run the script

Run this command:

bash
bash log_analyzer.sh

### 🔹 5. What happens next?

* The script reads `input.log`
* Finds all lines with `ERROR` or `WARNING`
* Saves them in a file called `extracted.log`
* Then creates a summary report in `summary.txt`

### 📄 Example Output in `summary.txt`:

Errors per hour:
      2 14
      1 15

Total errors/warnings: 3


