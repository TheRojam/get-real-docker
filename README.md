# Dockerfiles get-real/docker

this repo contains a submodule w/ the meteor app code.

## usage

- first clone the repo from github
`$ git clone https://github.com/TheRojam/get-real-docker`

- remember to initialize and update the submodule
`$ git submodule init && git submodule update --remote`

- to build the docker from scratch  
`$ docker build -t get-real/docker:latest .`

- start/run the container w/ the freshly created image in foreground
`$ docker container run -p 8080:8080 --name get-real-docker get-real/docker:latest`

** or **

- start/run the container w/ the freshly created image in background
`$ docker container run -p 8080:8080 --detach --name get-real-docker get-real/docker:latest`

for more information: docs.docker.com
