#!/bin/bash
set -ex

echo "Starting AMI setup script..."

#install Linux packages
echo "Installing Linux packages"
sudo yum upgrade -y
sudo yum -y install\
    amazon-efs-utils\
    bzip2-devel\
    gcc\
    gcc-c++\
    libcurl-devel\
    make\
    nfs-utils\
    openssl-devel\
    pkgconfig\
    python3\
    python3-devel\
    postgresql-devel\
    sqlite-devel\
    tar\
    wget\
    texlive\
    texlive-xtab\
    texlive-titlesec\
    texlive-adjustbox\
    xmlsec1\
    xmlsec1-openssl\
    xz\
    amazon-ssm-agent

set +ex