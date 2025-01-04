# Use the official Python base image (updated to 3.10)
FROM python:3.10-slim

# Set environment variables

# Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE=1
# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy the CLI tool code into the container
COPY . .

# Install the CLI tool
RUN pip install .

# Create a directory for persistent FS data
RUN mkdir -p /app/store_data # This is where the data will be stored
RUN mkdir -p /app/config # This is where the configuration file will be stored

# Set the default command to run the CLI
ENTRYPOINT ["connectivity_tool"]

# Allow the container to accept arguments passed in the docker run command
CMD []