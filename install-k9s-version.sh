#!/bin/bash

k9sVersion="${1}"

printf "\nInstalling/Updating k9s...\n\n"
mkdir /tmp/k9s
curl -L https://github.com/derailed/k9s/releases/download/v${k9sVersion}/k9s_v${k9sVersion}_Linux_x86_64.tar.gz -o /tmp/k9s/k9s.tar.gz
tar xvf /tmp/k9s/k9s.tar.gz -C /tmp/k9s
mv /tmp/k9s/k9s /usr/local/bin
rm -rf /tmp/k9s
chmod +x /usr/local/bin/k9s

printf "\n$(k9s version)\n\n"
