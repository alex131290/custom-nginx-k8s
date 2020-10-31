# K8S custom nginx

## Software requirements

This was tested on macOS

1. Install virtualbox version 5.2.44
2. Install minikube
3. Install kubectl

## Build and push the docker image

```bash
docker build -t custom-nginx -f custom-nginx-docker/Dockerfile ./custom-nginx-docker
docker tag custom-nginx:latest alex131290/custom-nginx:latest
docker push alex131290/custom-nginx:latest
```

## Starting minikube

```bash
minikube start
```

## deploying

```bash
minikube addons enable ingress
kubectl apply -f k8s/nginx-deployment.yaml
kubectl apply -f k8s/nginx-service.yaml
minikube service nginx --url
```

## Sanity test

```bash
./test.sh
```
