dev: ## Start the development environment
	@$(MAKE) -j16 nanoc css 

nanoc: ## Nanoc live preview
	@env bin/nanoc live -L -e development

css: ## Compile CSS
	@./bin/tailwindcss -i ./content/main.css -o ./output/main.css --watch

build: ## Production build
	@./bin/nanoc compile -e production
	@./bin/tailwindcss -i ./content/main.css -o ./output/main.css --minify

setup: ## Install dependencies
	@bundle install

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = "(:|:[^:]*?## )"}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' | sort
  
.PHONY: help dev nanoc css
.DEFAULT_GOAL := help
