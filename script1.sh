#!/bin/bash
# Script 1: System Identity Report
# Author: [Enter Your Name]
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Awaneesh Singh"
SOFTWARE_CHOICE="Python"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Extracting the pretty name of the Linux Distro
DISTRO=$(cat /etc/os-release | grep -w "PRETTY_NAME" | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "======================================"
echo "         The Open Source Audit        "
echo "======================================"
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home    : $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_DATE"
echo "--------------------------------------"
echo "License Info: The Linux kernel powering this OS is licensed under the GPLv2, guaranteeing the freedom to run, study, share, and modify the software."
echo "======================================"
