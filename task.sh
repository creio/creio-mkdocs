#!/usr/bin/env bash

# Fail on unset variables and command errors
set -e -o pipefail # -x: is for debugging

DOCKER_IMAGE="peaceiris/mkdocs-material"
DOCS_DIR="/root"

function help() {
    cat << EOS
Usage: ./task.sh [OPTION]
    symlink, -l, --link      symlink README.md --> docs/index.md
    serve,   -s, --serve     mkdocs serve
    build,   -b, --build     mkdocs build
    deploy,  -d, --deploy    mkdocs gh-deploy
    version, -V, -version    mkdocs --version
    help,    -h, --help      mkdocs --help
EOS
}

if [ "$1" = "" ]; then
    help && exit 0
fi

case "$1" in
    "symlink" | "--link" | "-l")
        ln -sf ../README.md docs/index.md
        ;;
    "serve" | "--serve" | "-s")
        mkdocs serve
        ;;
    "build" | "--build" | "-b")
        mkdocs build
        ;;
    "deploy" | "--deploy" | "-d")
        mkdocs gh-deploy
        ;;
    "version" | "-V" | "--version")
        mkdocs --version
        ;;
    "help" | "--help" | "-h")
        mkdocs --help
        ;;
    *)
        help
        ;;
esac

exit 0
