#!/bin/bash

curl -L https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o /tmp/awscli.zip
unzip -q /tmp/awscli.zip -d /tmp
/tmp/aws/install --update
rm -rf awscli.zip /tmp/aws

printf "\nAWS CLI version: $(aws --version)\n\n"
