#!/bin/bash

REPOS=$(ls repo)

for repo in $REPOS; do
    (cd "repo/${repo}" && ../../makepkg.sh)
done
