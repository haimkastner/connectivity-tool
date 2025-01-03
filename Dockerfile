# Use the official Python base image (updated to 3.10)
FROM python:3.10-slim

# Set environment variables

# Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE=1
# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED=1

# Set the directory where the store data will be saved
ENV STORE_DIR=/app/store_data

# Create the data directory
RUN mkdir -p $STORE_DIR

# Mark the directory as a volume to persist data
VOLUME ["/app/store_data"]

# Set working directory
WORKDIR /app

# Copy the CLI tool code into the container
COPY . .

# Install the CLI tool
RUN pip install .

# Set the default command to run the CLI
ENTRYPOINT ["connectivity_tool"]

# Allow the container to accept arguments passed in the docker run command
CMD []