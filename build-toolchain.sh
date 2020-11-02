#!/bin/bash

. common.sh

sudo podman build --tag $PODMAN_TAG -f ./Dockerfile

$PODMAN_RUN $SERENITY_ROOT/Toolchain/BuildIt.sh
