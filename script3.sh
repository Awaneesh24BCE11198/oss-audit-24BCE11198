#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
PYTHON_DIR="/usr/lib/python3" # Custom check for Python's footprint

echo "Directory Audit Report"
echo "======================================"

# Loop through standard directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and owner
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Calculate size, suppressing permission denied errors
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions/Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "--------------------------------------"
echo "Specific Software Check: Python"
# Check if Python's directory exists and print its permissions
if [ -d "$PYTHON_DIR" ]; then
    PERMS=$(ls -ld $PYTHON_DIR | awk '{print $1, $3, $4}')
    SIZE=$(du -sh $PYTHON_DIR 2>/dev/null | cut -f1)
    echo "$PYTHON_DIR => Permissions/Owner: $PERMS | Size: $SIZE"
else
    echo "Config/Library directory $PYTHON_DIR not found."
fi
