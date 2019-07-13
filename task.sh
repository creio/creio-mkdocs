#!/usr/bin/env bash

### Create, build & deploy Netlify
# https://app.netlify.com/start/deploy?repository=https://github.com/creio/awesome-arch/
# git clone https://github.com/creio/awesome-arch/
# cd awesome-arch
## edit mkdocs.yml url, repo
# site_url: https://awesome-arch.netlify.com/
# repo_name: creio/awesome-arch
# repo_url: https://github.com/creio/awesome-arch

### Start mkdocs project local, Arch Linux user virtualenv python
# pacman -S python-pip
# pip install --upgrade --user virtualenv
# virtualenv ve
# source ve/bin/activate
# pip install -r requirements.txt
# ./task.sh -h
# Create symlink README.md --> docs/index.md
# ./task.sh -l

### netlify.toml - custom build command

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
