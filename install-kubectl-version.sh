#!/bin/bash

# https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html

kubectlVersion="${1}"

case $kubectlVersion in
  1.20)
    printf "\nInstalling AWS kubectl for EKS 1.20...\n\n"
    curl -L https://amazon-eks.s3.us-west-2.amazonaws.com/1.20.4/2021-04-12/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
    ;;
  1.19)
    printf "\nInstalling AWS kubectl for EKS 1.19...\n\n"
    curl -L https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
    ;;
  1.18)
    printf "\nInstalling AWS kubectl for EKS 1.18...\n\n"
    curl -L https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.9/2020-11-02/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
    ;;
  1.17)
    printf "\nInstalling AWS kubectl for EKS 1.17...\n\n"
    curl -L https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.12/2020-11-02/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
    ;;
  1.16)
    printf "\nInstalling AWS kubectl for EKS 1.16...\n\n"
    curl -L https://amazon-eks.s3.us-west-2.amazonaws.com/1.16.15/2020-11-02/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
    ;;
  *)
    printf "\nInvalid Kubernetes Version! Aborting...\n\n"
    ;;
esac

chmod +x /usr/local/bin/kubectl
printf "\n$(kubectl version --short --client)\n\n"