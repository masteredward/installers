#!/bin/bash

printf "\nInstalling latest ECS CLI...\n\n"
curl -L https://amazon-ecs-cli.s3.amazonaws.com/ecs-cli-linux-amd64-latest -o /usr/local/bin/ecs-cli
chmod +x /usr/local/bin/ecs-cli

printf "\n$(ecs-cli --version)\n\n"