# Mkdocs start

## Create, build & deploy Netlify

- [Open url](https://app.netlify.com/start/deploy?repository=https://github.com/creio/awesome-arch/)
- `git clone https://github.com/creio/awesome-arch/`
- `cd awesome-arch`

### Edit mkdocs.yml: url, repo

```sh
site_url: https://awesome-arch.netlify.com/
repo_name: creio/awesome-arch
repo_url: https://github.com/creio/awesome-arch
```

## Start mkdocs project local, Arch Linux user virtualenv python

```sh
pacman -S python-pip
pip install --upgrade --user virtualenv
virtualenv ve
source ve/bin/activate
pip install -r requirements.txt
```

Bash scrypt helper

```sh
./task.sh
```

Create symlink README.md --> docs/index.md

`./task.sh -l`

## File netlify.toml: custom build command
