# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements .

# Install the project dependencies
RUN pip install --no-cache-dir -r requirements

# Copy the rest of the project files to the working directory
COPY . .

# Set the command to run when the container starts
CMD [ "scrapy", "version" ]

