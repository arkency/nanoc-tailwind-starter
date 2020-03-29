# Nanoc + Parcel + TailwindCSS

Starter kit for static sites on [nanoc](https://nanoc.ws) with a bit of JavaScript and TailwindCSS styling.

## Initial setup

It is assumed you already have Ruby with Bundler and Node with Yarn present.

```
./bin/setup
```

## Build for production

One-time processing with optimizations.

```
./bin/build
```

## Build for development

Starts if foreground and live reloads HTML, JS and CSS changes.

```
./bin/server
open http://localhost:3000/
```

## Unpacking latest release into current directory

```
curl -s https://api.github.com/repos/arkency/nanoc-parcel-tailwind-starter/releases/latest |\
  grep tarball_url |\
  cut -d'"' -f4 |\
  xargs -n 1 curl -sSL |\
  tar -xz --strip-components=1
```
