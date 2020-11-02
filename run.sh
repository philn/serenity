#!/bin/bash

set -ex

. common.sh

# This is needed because the build ran as root in privileged podman, but now we
# no longer need root, so allow read-write to everybody in the build directory.
$PODMAN_RUN chmod -R a+rw $BUILD_DIR/

# This toolbox should have qemu installed (@Virtualization in Fedora).
toolbox -r 33 run ninja -C $BUILD_DIR run
