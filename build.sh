#!/bin/bash

. common.sh

sudo podman build --tag $PODMAN_TAG -f ./Dockerfile

mkdir -p $BUILD_DIR
$PODMAN_RUN cmake -S $SERENITY_ROOT -G Ninja -B $BUILD_DIR
$PODMAN_RUN ninja -C $BUILD_DIR install
$PODMAN_RUN ninja -C $BUILD_DIR image
