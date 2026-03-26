#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

# Interactive prompts
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Variables for output
DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"

# Write the paragraph to the text file using redirection
echo "My Open Source Manifesto - $DATE" > "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Technology thrives when it is open. Every day, I rely on tools like $TOOL to learn, write code, and solve problems. To me, the core of the open-source movement is $FREEDOM. It represents a collaborative environment where knowledge is shared for the benefit of all, rather than locked away. If I had the opportunity to contribute to this ecosystem, I would build and share $BUILD freely, ensuring that other developers have better foundations to stand upon." >> "$OUTPUT"

echo "--------------------------------------------------"
echo "Manifesto successfully saved to $OUTPUT"
echo "Preview of your manifesto:"
echo ""
cat "$OUTPUT"

