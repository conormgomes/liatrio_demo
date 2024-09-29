# An app built in express.js, containerized with Docker, and hosted on the cloud with EKS

Documentation and Notes can be found [here](documentation.md)


## Running Docker container:
```
docker build -t {name}:{version} .
```
then
```
docker run -dp 127.0.0.1:80:80 {name}:{version}
```


## Running express app standalone:
```
npm install
```
then
```
node index.js
```