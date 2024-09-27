# Use a base Python image
FROM python:3.11-slim

# Install system-level dependencies: poppler-utils and tesseract-ocr
RUN apt-get update && \
    apt-get install -y poppler-utils tesseract-ocr && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install any required fonts (optional, but can help in some cases)
RUN apt-get install -y fonts-liberation

# Set environment variables to ensure pytesseract uses the correct path
ENV TESSDATA_PREFIX=/usr/share/tesseract-ocr/4.00/tessdata/

# Set the working directory in the container
WORKDIR /app

# Copy your project files to the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Specify the command to run your Python app
CMD ["python", "app.py"]
