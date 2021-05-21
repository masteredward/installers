#!/bin/bash

printf "\nInstalling/Updating helm...\n\n"
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

printf "\nhelm version installed: $(helm version)\n\n"