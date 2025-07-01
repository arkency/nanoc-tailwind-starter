# Nanoc + TailwindCSS

Starter kit for static sites on [Nanoc](https://nanoc.ws) generator with [TailwindCSS](https://tailwindcss.com/) styling. Ruby is the only dependency required.

## How to start a new site

It is assumed you have Ruby present on your system. Create a [new repository from the template](https://github.com/new?template_name=nanoc-tailwind-starter&template_owner=arkency). Or just copy the contents of this repository to any place — whatever works.

There's a bunch of useful tasks to make life easier:

* `make setup` will install all required Ruby gem dependencies, feel free to extend it in your copy

* `make dev` spins development server on [localhost:3000](http://localhost:3000) with live reloads of CSS and HTML

* `make build` produces optimized `output/` — ready for production

## Keeping up-to-date with starter kit

If you've seeded your site with this starter and want to catch-up to its latest version, you can extract the latest release on top of your existing code:

```sh
curl -s https://api.github.com/repos/arkency/nanoc-tailwind-starter/releases/latest |\
  grep tarball_url |\
  cut -d'"' -f4 |\
  xargs -n 1 curl -sSL |\
  tar -xz --strip-components=1 \
    --exclude .github \
    --exclude .gitignore \
    --exclude README.md \
    --exclude Gemfile.lock
```

Then you have decide which changes go in and which not based on the `git diff`. And that's it.
