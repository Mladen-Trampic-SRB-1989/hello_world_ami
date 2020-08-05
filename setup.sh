#!/bin/bash
set -ex

echo "Starting AMI setup script..."

#install Linux packages
echo "Installing Linux packages"
sudo yum upgrade -y
sudo yum -y install \
    httpd

#copy / override httpd.conf
sudo cp /tmp/httpd/httpd.conf /etc/httpd/conf/httpd.conf

#copy static content
sudo cp -r /tmp/html/ /var/www/html/

#enable HTTPD by default
sudo systemctl enable httpd --now


#configure virtualhost 