# Use a base Python image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project files to the container
COPY . .

# Make the install script executable
RUN chmod +x install.tesseract.sh

# Run the install script to install Tesseract
RUN ./install.tesseract.sh

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start the Streamlit app
CMD ["streamlit", "run", "main.py"]

