#!/usr/bin/env bash
set -e

REMOTE_IMAGE_NAME="${DOCKER_LOGIN}"/monolithic-shop:latest

echo "${DOCKER_PASSWORD}" | docker login --username "${DOCKER_LOGIN}" --password-stdin

docker tag zutherb/monolithic-shop:latest "${REMOTE_IMAGE_NAME}"
docker push "${REMOTE_IMAGE_NAME}"