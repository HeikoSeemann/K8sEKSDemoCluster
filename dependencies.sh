#!/bin/bash


#Check if aws cli is installed

echo "Checking for AWS CLi..."
if command -v aws --version &> /dev/null
then
    echo "AWS CLI is installed:"
    aws --version
else
    echo "AWS CLI is not installed"
    echo "installing..."

    #moving to root dir and installing aws cli
    cd
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    aws --version
    echo "aws cli successfully installed"
fi
echo "proceeding..."


echo "Checking for eksctl..."
if command -v eksctl version &> /dev/null
then
    echo "eksctl is installed:"
    eksctl version
else
    echo "AWS CLI is not installed"
    echo "installing..."

    #moving to root dir and installing aws cli
    cd
    curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
    sudo mv /tmp/eksctl /usr/local/bin
    eksctl version
    echo "aws cli successfully installed"
fi

