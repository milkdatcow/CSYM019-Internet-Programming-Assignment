#https://medium.com/novai-php-laravel-101/running-php-using-docker-a-step-by-step-guide-ebfe044fcd43

# Use an official PHP runtime as a parent image
FROM php:8.1-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the PHP file into the container's web directory
COPY index.php /var/www/html/

COPY . /var/www/html/

# Set the ServerName to suppress the warning about Apache's domain name
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Enable mod_rewrite for Apache (optional, useful for many PHP applications)
RUN a2enmod rewrite

# Expose port 80 (the default HTTP port)
EXPOSE 80