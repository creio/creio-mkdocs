path: blob/master
source: README.md

# Mkdocs Start

MkDocs Material Starter Kit. Deploy documentation to hosting platforms (Netlify, GitHub Pages).

[Blog Post](https://creio.github.io/mkdocs) Russian.

- [Mkdocs Start](#mkdocs-start)
- [Create docs](#create-docs)
    - [Configure](#configure)
    - [Mkdocs local](#mkdocs-local)
- [Github pages](#github-pages)

---

## Create docs

Create Netlify project & Github repo. Method 1.

- [Open url](https://app.netlify.com/start/deploy?repository=https://github.com/creio/mkdocs).
- `git clone https://github.com/[GITHUB_USER]/[GITHUB_REPO]/`.
- `cd [GITHUB_REPO]`.

### Configure

Edit `mkdocs.yml`.

```sh
site_url: https://mkdocs.netlify.com/
repo_name: creio/mkdocs
repo_url: https://github.com/creio/mkdocs
```

### Mkdocs local

OS Arch Linux, virtualenv python.

```sh
pacman -S python-pip
pip install --upgrade --user virtualenv
virtualenv ve
source ve/bin/activate
pip install -r requirements.txt
```

Bash script helper.

```sh
./task.sh
```

Create symlink `README.md` --> `docs/index.md`.

`./task.sh -l`

### Netlify config

File `netlify.toml` custom build command.

## Github pages

Github pages, no Netlify. Method 2.

- [Fork repo](https://github.com/creio/mkdocs).
- Open url `https://github.com/[GITHUB_USER]/[GITHUB_REPO]/settings`. GitHub Pages - Source, gh-pages branch.
- `git clone https://github.com/[GITHUB_USER]/[GITHUB_REPO]/`.
- Repeat [Mkdocs local](#mkdocs-local).

Build & push.

```sh
./task.sh -d
```
