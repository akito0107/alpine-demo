NAME := alpine-demo
VERSION := 0.0.1
REVISION := $(shell git rev-parse --short HEAD)
LDFLAGS := -X 'main.version=$(VERSION)' -X 'main.revision=$(REVISION)'
PACKAGENAME := github.com/akito0107/alpine-demo

.PHONY: all main

all: main

main:
	GOOS=linus GOARCH=amd64 go build -ldflags "$(LDFLAGS)" -o main main.go

