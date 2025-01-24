dev: ## Start the development environment
	@$(MAKE) -j16 nanoc css 

nanoc: ## Nanoc live preview
	@env bin/nanoc live -L -e development

css: ## Compile CSS
	@npm run css

build: ## Production build
	@./bin/nanoc compile -e production
	@npm run build

setup: ## Install dependencies
	@bundle check || bundle install
	@npm --no-fund --no-audit install

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = "(:|:[^:]*?## )"}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' | sort
  
.PHONY: help dev nanoc css
.DEFAULT_GOAL := help
