# GitHub Webhook handler in Docker

Basic Nodejs webserver to listen for GitHub Webhook requests


## Prerequisites

  - Install [Docker](https://www.docker.com/)

## Install from DockerHub

Rather than build it yourself, the full container is available on [DockerHub](https://hub.docker.com/r/jwiebalk/github-webhook-handler-docker/)

```
sudo docker pull jwiebalk/github-webhook-handler-docker
sudo docker run -d -p 7777:7777 -e SECRET=$SHARED_SECRET -t jwiebalk/github-webhook-handler-docker
```

You can then check the `docker logs $container` to see webhook status

## Build the image

Build the image locally

```
git clone https://github.com/jwiebalk/github-webhook-handler-docker.git
cd github-webhook-handler-docker
sudo docker build --rm=true -t github-webhook-handler-docker .
```

