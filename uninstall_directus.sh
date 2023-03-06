#!/bin/bash

which helm > /dev/null

if [ ! $? -eq 0 ]
    then
        echo "No helm detected, you should install helm or this won't work!"
        echo "check this info: https://helm.sh/docs/intro/install/"
        echo "exiting..."
    else
    echo;echo "Uninstalling directus..."
    helm uninstall directus -n directus
fi
echo "done."