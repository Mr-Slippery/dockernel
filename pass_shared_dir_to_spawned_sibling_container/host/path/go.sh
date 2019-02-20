#!/bin/bash
set -euo pipefail

IMG_NAME=parent

source "$(dirname $0)/docker-path-utils.sh"

FIRST_CONTAINER_PATH=/first/container/path
SECOND_CONTAINER_PATH=/second/container/path

docker run -it --rm \
	   -v "$(resolve_source_path ${FIRST_CONTAINER_PATH})":"${SECOND_CONTAINER_PATH}" \
           --name second \
           "${IMG_NAME}" \
           ls -l "${SECOND_CONTAINER_PATH}"
