# oss-audit-24BCE11198
# The Open Source Audit: Python

**Student Name:** Awaneesh Singh 
**Roll Number:** 24BCE11198 
**Chosen Software:** Python  

## Project Overview
This repository contains five Bash shell scripts written as part of "The Open Source Audit" capstone project. These scripts demonstrate practical Linux command-line skills, system auditing, and automation, with a specific focus on evaluating Python's footprint within a Linux environment.

## Dependencies and Prerequisites
To run these scripts, you need:
* A Linux environment (Ubuntu via WSL, a Virtual Machine, or a native Linux installation).
* The Bash shell (default on most Linux distributions).
* Standard Linux utilities (built-in commands like `grep`, `awk`, `du`, and `tail`).
* **Python 3** should be installed to see the successful output of Script 2. (Install via `sudo apt install python3`).

## Script Descriptions

* **Script 1: System Identity Report (`script1.sh`)** Acts as a system welcome screen. It dynamically fetches and displays the Linux distribution name, kernel version, current logged-in user, system uptime, and a message detailing the OS's open-source license (GPLv2).

* **Script 2: FOSS Package Inspector (`script2.sh`)** Checks the system to see if Python 3 is installed. If found, it outputs the installed version. It also utilizes a case statement to print a specific philosophical note about Python's community-driven nature.

* **Script 3: Disk and Permission Auditor (`script3.sh`)** Loops through critical system directories (like `/etc` and `/var/log`) and Python's specific library directory (`/usr/lib/python3`). It audits and reports the owner, permissions, and total disk space used by each directory.

* **Script 4: Log File Analyzer (`script4.sh`)** Parses a designated system log file line-by-line to count the occurrences of a specific keyword (defaults to "error"). It features a retry loop if an empty file is provided and prints the last 5 matching error lines for quick debugging.

* **Script 5: Open Source Manifesto Generator (`script5.sh`)** An interactive script that asks the user three questions about their open-source tool usage and philosophy. It concatenates the answers into a personalized manifesto paragraph and saves it to a dynamically named text file.

## Execution Instructions

Follow these step-by-step instructions to run the scripts on your Linux machine.

**Step 1: Open your terminal and navigate to the repository**
Make sure you are in the directory where you downloaded or cloned these scripts.

**Step 2: Make the scripts executable**
Before running them, you must grant execution permissions. Run this command:
`chmod +x *.sh`

**Step 3: Run the scripts individually**
Execute each script using the `./` prefix:

* Run Script 1: 
  `./script1.sh`
* Run Script 2: 
  `./script2.sh`
* Run Script 3: 
  `./script3.sh`
* Run Script 4: *(Requires a log file path as an argument)*
  `./script4.sh /var/log/syslog` 
  *(Note: You can replace `/var/log/syslog` with `/var/log/dmesg` or any other valid log file).*
* Run Script 5: 
  `./script5.sh`
