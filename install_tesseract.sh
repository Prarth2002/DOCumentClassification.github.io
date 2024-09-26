#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

echo "Updating package list..."
apt-get update

echo "Installing Tesseract..."
apt-get install -y tesseract-ocr

echo "Installing Poppler utilities..."
apt-get install -y poppler-utils

echo "Installation completed."
