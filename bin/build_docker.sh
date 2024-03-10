#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOCKER_IMAGE_TAG="ofsite/nikola:1.0"

docker build \
  -t "${DOCKER_IMAGE_TAG}" \
  "${SCRIPT_DIR}/.."
