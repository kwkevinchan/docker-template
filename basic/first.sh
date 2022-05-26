# !/bin/sh
set -e

export DOCKER_FILE_NAME=test.Dockerfile
export DOCKER_IMAGE_TAG=my:test
export DOCKER_CONTAINER_NAME=first_container

# dockerfile
cat $DOCKER_FILE_NAME

# build dockerfile to docker image
docker build -f ./$DOCKER_FILE_NAME -t $DOCKER_IMAGE_TAG .

# docker image
docker images | grep $DOCKER_IMAGE_TAG

# run docker image
docker run --name $DOCKER_CONTAINER_NAME $DOCKER_IMAGE_TAG

# docker container
docker ps -a | grep $DOCKER_CONTAINER_NAME
