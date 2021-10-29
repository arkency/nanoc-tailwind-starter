MAKEFLAGS := --jobs=16
MAKEFLAGS += --output-sync=target

dev: nanoc parcel ## Start the development environment

nanoc: ## Nanoc live preview
	@env bin/nanoc live -L -e development

parcel: ## Parcel watch
	@npm run server

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = "(:|:[^:]*?## )"}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' | sort
  
.PHONY: help dev nanoc parcel
.DEFAULT_GOAL := help

