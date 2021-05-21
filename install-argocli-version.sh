#!/bin/bash

argocliVersion="${1}"

printf "\nInstalling argocli version ${argocliVersion}...\n\n"
curl -LO https://github.com/argoproj/argo/releases/download/v${argocliVersion}/argo-linux-amd64.gz
gunzip argo-linux-amd64.gz
rm -f argo-linux-amd64.gz
chmod +x argo-linux-amd64
mv ./argo-linux-amd64 /usr/local/bin/argo

printf "\n$(argo version)\n\n"
