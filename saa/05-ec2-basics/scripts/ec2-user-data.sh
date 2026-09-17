#!/bin/bash 
# User data script for EC2 instance initialization
# install httpd (Amazon Linux 2023 version)

yum update -y 
yum install -y httpd
systemctl start httpd
systemctl enable httpd

# Nice welcome message for the web server
echo "<h1>Welcome to my EC2 instance! @ $(hostname -f)</h1>" > /var/www/html/index.html

# Log the completion of the user data script
echo "User data script completed successfully." >> /var/log/user-data.log