# Use a base image with a shell (such as Alpine Linux)
FROM alpine:latest

# Set working directory
WORKDIR /app

# Copy the shell script into the container
COPY my_script.sh /app/

# Set permissions to make the script executable (if needed)
RUN chmod +x my_script.sh

# Define the command to run the script when the container starts
CMD ["./my_script.sh"]
