#!/bin/bash

# Install Apache using brew
brew install httpd

# Start Apache
sudo apachectl start

# Change ownership of html directory to customize test page
sudo chown -R $USER /usr/local/var/www

# Add our text to custom test page
echo "<html><h1>Project Complete!</h1></html>" | sudo tee /usr/local/var/www/index.html > /dev/null

# Print message for user
echo "Apache installed and started. Your website is now accessible locally at http://localhost/"

# Additional steps:
# - Manually open a web browser to http://localhost/ to verify the website locally.
# - For accessing an AWS URL or EC2 instance URL, you would typically do this manually after ensuring Apache is running and your webpage is accessible locally.
# - Use a web browser or `curl` command to test the deployed website using its public URL or IP address (after setting up and configuring DNS or security groups correctly in AWS).

# Example:
echo "Visit your AWS URL or EC2 instance URL to verify: https://ec2-13-60-54-125.eu-north-1.compute.amazonaws.com"
