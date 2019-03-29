# node-cubicle 

[![][docker-badge]][docker-url]

Base image for turn-key Node.js development environments

[docker-badge]: https://img.shields.io/docker/cloud/build/marionebl/node-cubicle.svg?label=docker&style=flat-square
[docker-url]: https://cloud.docker.com/u/marionebl/repository/docker/marionebl/node-cubicle

## Getting started

Use this image as base image for project-specific cubicles

```Dockerfile
# Dockerfile
FROM marionebl/node-cubicle

WORKDIR /src
ADD . ./
RUN yarn install
RUN yarn build
```

```yml
# docker-compose.yml
version: '3'
services:
  cubicle:
    build: .
    image: marionebl/patternplate-cubicle
    ports:
      - '8443:8443'
    volumes:
      - ".:/src/"
    command: code-server --allow-http --no-auth
```

## Examples

* [patternplate-cubicle](https://cloud.docker.com/u/marionebl/repository/docker/marionebl/patternplate-cubicle)