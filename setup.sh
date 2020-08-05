#!/bin/bash
set -ex

echo "Starting AMI setup script..."

#install Linux packages
echo "Installing Linux packages"
sudo yum upgrade -y
sudo yum -y install \
    httpd

#enable HTTPD by default
sudo systemctl enable httpd --now


#configure virtualhost 

#copy static content