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