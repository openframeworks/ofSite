#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOCKER_IMAGE_TAG="ofsite/nikola:1.0"

docker run \
  --rm \
  -ti \
  -p 127.0.0.1:8000:8000/tcp \
  -v "${SCRIPT_DIR}/..:/nikola" \
  "${DOCKER_IMAGE_TAG}" \
  /bin/ash
