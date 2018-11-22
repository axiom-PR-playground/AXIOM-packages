#!/bin/bash

docker run --rm -it \
    -v $(pwd):/workdir \
    -w /workdir \
    -v /etc/group:/etc/group:ro \
    -v /etc/passwd:/etc/passwd:ro \
    -u=$UID:$(id -g $USER) \
    -e USER="$USER" \
    medicineyeh/axiom-pkgbuild
