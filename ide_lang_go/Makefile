-include ../env_vars.mk
REPO := $(notdir $(CURDIR))
VERSION ?= latest

.PHONY: build

build:
	@docker build -t $(NAMESPACE)/$(REPO):$(VERSION) .
