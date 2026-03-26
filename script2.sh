#!/bin/bash
# Script 2: FOSS Package Inspector

# Target software
PACKAGE="python3"

# Check if the package command exists on the system
if command -v $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    echo "Version Info:"
    $PACKAGE --version
else
    echo "$PACKAGE is NOT installed on this system."
fi

echo "Philosophy Note:"

# Case statement for package philosophy
case $PACKAGE in
    python3|python) echo "Python: A language shaped entirely by community." ;;
    httpd|apache2)  echo "Apache: The web server that built the open internet." ;;
    mysql|mysqld)   echo "MySQL: Open source at the heart of millions of apps." ;;
    git)            echo "Git: The tool Linus built when proprietary failed him." ;;
    *)              echo "No philosophy note available for $PACKAGE." ;;
esac
