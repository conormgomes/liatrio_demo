# An app built in node.js, containerized with Docker, and hosted on the cloud with AWS

[![Test, Build, and Push Docker image](https://github.com/conormgomes/liatrio_demo/actions/workflows/workflow.yml/badge.svg)](https://github.com/conormgomes/liatrio_demo/actions/workflows/workflow.yml)

Additional documentation and notes can be found [here](notes/)

## Creating EKS Cluster and installing Deployment/Service/HPA
```bash
eksctl create cluster --name {} --region us-west-2 --nodegroup-name {} --node-type t2.small --nodes 2 --nodes-min 1 --nodes-max 3 --managed

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f hpa.yaml

#to delete cluster
eksctl delete cluster --name {}
```

## Pulling Docker container from Dockerhub and running:
```bash
docker pull conormgomes/liatrio_demo:{}

docker run -dp 127.0.0.1:80:80 conormgomes/liatrio_demo:{}
```

## Building and Running Docker container from local files:
```bash
docker build -t {name}:{tag} .

docker run -dp 127.0.0.1:80:80 {name}:{tag}
```

## Running express app standalone:
```bash
npm install

node index.js
```