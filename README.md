# Dockerfiles get-real/docker

this repo contains a submodule w/ the meteor app code.

## usage

- first clone the repo from github

`$ git clone https://github.com/TheRojam/get-real-docker`

- to build the docker from scratch  
`$ docker build -t get-real/docker:latest .`

- start/run the container w/ the freshly created image in foreground

`$ docker container run -p 8080:8080 --name get-real-docker get-real/docker:latest`
