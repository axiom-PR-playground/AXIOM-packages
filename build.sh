#!/bin/bash

REPOS=$(ls repo)

# Usage: ./build.sh [repo]
#  If repo is specified, build the specific repo.
#  Otherwise, build all packages.

if [[ "$1" != "" ]]; then
    if [[ -d "$1" ]]; then
        (cd "$1" && ../../makepkg.sh)
    else
        echo "$1 is not a directory" && exit 1
    fi
else
    for repo in $REPOS; do
        (cd "repo/${repo}" && ../../makepkg.sh)
    done
fi

rm -f apertus.db  apertus.db.tar.gz  apertus.files  apertus.files.tar.gz
repo-add apertus.db.tar.gz $(find ./repo -name '*.pkg.tar.xz')

exit 0
