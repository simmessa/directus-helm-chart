#!/bin/bash

which helm > /dev/null

if [ ! $? -eq 0 ]
    then
        echo "No helm detected, you should install helm or this won't work!"
        echo "check this info: https://helm.sh/docs/intro/install/"
        echo "exiting..."
    else
    kubectl create ns directus
    kubectl apply -f storage -n directus
    echo;echo Installing pre-requisites, this will create shared directories on the assumption your current host is also your k8s dev environment...
    sudo mkdir -p /var/dockerdata/directus/db /var/dockerdata/directus/redis-master /var/dockerdata/directus/redis-replica /var/dockerdata/directus/postgresql
    sudo chmod a+w /var/dockerdata/directus/ -R
    helm repo add bitnami https://charts.bitnami.com/bitnami
    cd charts/directus
    helm dependency update
    cd ../../
    echo;echo "Installing directus..."
    helm install -f directus-values.yaml -n directus directus ./charts/directus
    echo;echo "Here's your credentials: admin@example.com / d1r3ctu5"
    echo;echo "You should point the domain directus.local to your k8s node ip!"
    echo;echo "Find out more about your WSL instance ip on powershell by running: wsl hostname -I"
    echo
fi
echo "done."