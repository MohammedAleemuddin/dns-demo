# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container
COPY hello.py .

# Install any needed packages
RUN pip install --no-cache-dir flask

# Expose port 80 for internet access
EXPOSE 80

# Run the Python script when the container starts
CMD ["python", "hello.py"]
