#!/bin/bash

which helm > /dev/null

if [ ! $? -eq 0 ]
    then
        echo "No helm detected, you should install helm or this won't work!"
        echo "check this info: https://helm.sh/docs/intro/install/"
        echo "exiting..."
    else
    kubectl apply -f storage
    echo;echo Installing pre-requisites...
    # sudo mkdir -p /var/dockerdata/directus/db /var/dockerdata/directus/redis-master /var/dockerdata/directus/redis-replica
    # sudo chmod a+w /var/dockerdata/directus/ -R
    helm repo add bitnami https://charts.bitnami.com/bitnami
    cd charts/directus
    helm dependency update
    cd ../../
    echo;echo "Installing directus..."
    helm install -f directus-values.yaml -n directus directus ./charts/directus
fi
echo "done."