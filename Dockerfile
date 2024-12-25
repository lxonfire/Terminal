# Use the official Ubuntu image as a base
FROM ubuntu:latest

# Update package lists and install necessary packages
RUN apt-get update && apt-get install -y 
    python3 
    python3-pip 
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the entire current directory into the container at /app
COPY . .

# Install required Python packages
RUN pip3 install --no-cache-dir -r requirements.txt

# Run the Python script when the container starts
CMD ["python3", "main.py"]
