# Use AlmaLinux 9 as the base image
FROM almalinux:9

# Install Apache HTTP Server (httpd)
RUN dnf update -y && \
    dnf install -y httpd && \
    dnf clean all

# Expose port 80, the default HTTP port
EXPOSE 80

# Copy a custom index.html (optional)
# COPY index.html /var/www/html/

# Start Apache in the foreground when the container launches
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
