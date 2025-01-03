# Use the official Python base image
FROM python:3.9-slim

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

# Set the default command to run the CLI
ENTRYPOINT ["connectivity_tool"]

# Allow the container to accept arguments passed in the docker run command
CMD []