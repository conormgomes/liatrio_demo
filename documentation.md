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