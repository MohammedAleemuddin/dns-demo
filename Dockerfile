# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Copy custom configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files into the Nginx web root directory
COPY index.html /usr/share/nginx/html

# Expose port 80 to allow incoming traffic
EXPOSE 80
