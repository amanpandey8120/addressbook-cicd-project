# Use the official httpd (Apache HTTP Server) image as the base
FROM httpd:latest

# Set the working directory (optional)
WORKDIR /usr/local/apache2/htdocs/

# Copy the application files from the local directory to the web directory in the container
COPY . /usr/local/apache2/htdocs/

# Expose port 80 (default port for Apache HTTP server)
EXPOSE 80

# Start the Apache service (this happens automatically when the container runs)
CMD ["httpd-foreground"]
