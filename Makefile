dev: ## Start the development environment
	@$(MAKE) -j16 nanoc css
.PHONY: dev

nanoc: ## Nanoc live preview
	@env bin/nanoc live -L -e development
.PHONY: nanoc

css: ## Compile CSS
	@./bin/tailwindcss -i ./content/main.css -o ./output/main.css --watch
.PHONY: css

build: ## Production build
	@./bin/nanoc compile -e production
	@./bin/tailwindcss -i ./content/main.css -o ./output/main.css --minify
.PHONY: build

setup: ## Install dependencies
	@bundle install
.PHONY: setup

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = "(:|:[^:]*?## )"}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' | sort
.PHONY: help

.DEFAULT_GOAL := help
