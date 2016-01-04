# Automatic make variables used in this file
# (see https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html)
#
# - $@ - the target / output of the rule. Think "dartboard".
# - $^ - the dependencies / inputs of the rule. Imagine an arrow pointing up to
#     the dependency list.

GOPATH ?= $(HOME)/projects/go-workspace

.PHONY: all
all: hello.zip

hello.zip: hello
	mkdir -p build
	cp $^ lambda-hello.js build/
	chmod -R a+r build/*
	chmod -R a-w build/*
	chmod a+x build/hello
	zip -Xjr $@ build

hello: hello.go
	docker-compose run build go build hello.go

.PHONY: clean
clean:
	rm -rf hello hello.zip build
