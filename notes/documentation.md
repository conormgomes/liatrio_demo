## Documentation/Notes

### Node/Express
- npm init {-y}
- npm install {dependencies}
- node {main.js} 

- package file: 
	- mix of human readable and functional metadata
	- lots are just information for NPM registry
	- test section can be run with 'npm test'
- lock file: "snapshot of entire dependency tree" so other devs see what versions of dependencies were used/are in use
- ^X.Y.Z can update Y/Z, but not X | ~X.Y.Z can update Z, but not X/Y (semantic versioning)


### Docker
- docker build -t {name}:{version}
- docker run -dp 127.0.0.1:80:80 {name}:{version}

- FROM = grabs base image for the container
- RUN = running a command, unusually used for environment setup
- COPY = copy files into the container
- ENV = environment variables
- EXPOSE = exposes port
- CMD = final command that will run when container starts


### EKS
- cluster config  --> hard to find documentation on config file for eksctl
	- schema: https://eksctl.io/usage/schema/
	- examples: https://github.com/eksctl-io/eksctl/tree/main/examples
- eksctl create cluster --name {} --region us-west-2 --nodegroup-name {} --node-type t2.small --nodes 2 --nodes-min 1 --nodes-max 3 --managed
- kubectl apply -f {}
- eksctl delete cluster --name {}

- configure IAM account (aws-auth.yaml)