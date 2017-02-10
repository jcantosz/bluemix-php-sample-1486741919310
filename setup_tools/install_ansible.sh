#!/bin/bash
python --version
echo "apt-get -qq update"
sudo apt-get -qq update
echo "apt-get -qq -y install python-dev libssl-dev libffi-dev"
sudo apt-get -qq -y install python-dev libssl-dev libffi-dev

# Boto needed for s3, boto3 needed for elastic-beanstalk
echo "pip install pycrypto pyyaml boto boto3 ansible --quiet"
sudo pip install pycrypto pyyaml boto boto3 ansible --quiet

echo "apt-get -qq clean"
sudo apt-get -qq clean
