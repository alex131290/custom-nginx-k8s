#!/bin/bash

curr_date=$(date +%d-%m-%Y_%H:%M)
webb_app_url=$(minikube service nginx --url)
status_code=$(curl -s -o /dev/null -w "%{http_code}" "$webb_app_url")
if [[ "$status_code" == "200" ]]; then
    echo "The web page is being served correctly"
else
    echo "The web page is not being served correctly"
fi
