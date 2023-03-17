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
    echo "eksctl is not installed"
    echo "installing..."

    #moving to root dir and installing aws cli
    cd
    curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
    sudo mv /tmp/eksctl /usr/local/bin
    eksctl version
    echo "ekctl successfully installed"
fi


echo "Checking for kubectl..."
if command -v kubectl version --client &> /dev/null
then
    echo "kubectl is installed:"
    kubectl version --client
else
    echo "Kubectl is not installed"
    echo "installing..."

    #moving to root dir and installing aws cli
    cd
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"    sudo mv /tmp/eksctl /usr/local/bin
    curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    kubectl version --client
    echo "aws cli successfully installed"
fi
