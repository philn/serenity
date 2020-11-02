#!/bin/bash

export SERENITY_ROOT="$PWD"
export BUILD_DIR=$SERENITY_ROOT/Build

export PODMAN_TAG="fedora:serenity"
export PODMAN_RUN="sudo podman run --volume $SERENITY_ROOT:$SERENITY_ROOT --privileged -i -t --rm --name serenity $PODMAN_TAG"
