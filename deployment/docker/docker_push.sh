#!/usr/bin/env bash

set -euo pipefail

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker-compose -f deployment/docker/docker-compose-build.yml push
