# Nanoc + TailwindCSS

Starter kit for static sites on [nanoc](https://nanoc.ws) with TailwindCSS styling.

## Initial setup

It is assumed you already have Ruby present.

```
make setup
```

## Build for production

One-time processing with optimizations.

```
make build
```

## Build for development

Starts in foreground, live reloads HTML and CSS changes.

```
make dev
open http://localhost:3000/
```

## Unpacking latest release into current directory

```
curl -s https://api.github.com/repos/arkency/nanoc-tailwind-starter/releases/latest |\
  grep tarball_url |\
  cut -d'"' -f4 |\
  xargs -n 1 curl -sSL |\
  tar -xz --strip-components=1
```
