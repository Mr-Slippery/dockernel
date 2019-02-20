#!/usr/bin/env bash

IMG_NAME=parent

HOST_PATH="$(pwd)/host/path"
FIRST_CONTAINER_PATH=/first/container/path

docker run -it --rm --privileged \
   	   -v /var/run/docker.sock:/var/run/docker.sock \
	   -v /usr/bin/docker:/usr/bin/docker \
	   -v /usr/lib/x86_64-linux-gnu/libltdl.so.7:/usr/lib/x86_64-linux-gnu/libltdl.so.7 \
	   -v "${HOST_PATH}":"${FIRST_CONTAINER_PATH}" \
	   --name first \
	   "${IMG_NAME}" \
	   "${FIRST_CONTAINER_PATH}/go.sh"
