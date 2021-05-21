#!/bin/bash

printf "\nInstalling/Updating eksctl to latest version\n\n"
curl -L https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_linux_amd64.tar.gz -o /tmp/eksctl.tar.gz
tar xzf /tmp/eksctl.tar.gz -C /usr/local/bin
rm -f /tmp/eksctl.tar.gz
chmod +x /usr/local/bin/eksctl

printf "\neksctl version installed: $(eksctl version)\n\n"