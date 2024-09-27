# Use a base Python image
FROM python:3.11-slim

# Update package list and install system dependencies
RUN apt-get update && \
    apt-get install -y tesseract-ocr poppler-utils fonts-liberation && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Specify the command to run your Python app
CMD ["python", "app.py"]
