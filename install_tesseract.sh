#!/bin/bash
# Update package list and install Tesseract
apt-get update && apt-get install -y tesseract-ocr

# Output the current PATH for debugging
echo "Current PATH: $PATH"

# Verify installation and output the version
if command -v tesseract &> /dev/null; then
    echo "Tesseract installed successfully."
    tesseract --version
else
    echo "Tesseract installation failed."
fi
