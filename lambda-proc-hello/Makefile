# Automatic make variables used in this file
# (see https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html)
#
# - $@ - the target / output of the rule. Think "dartboard".
# - $^ - the dependencies / inputs of the rule. Imagine an arrow pointing up to
#     the dependency list.
# - $< - the first dependency / input of the rule. Imagine an arrow pointing to
#     the left-most dependency.

GOPATH ?= $(HOME)/projects/go-workspace

.PHONY: all
all: lambda-proc-hello.zip

lambda-proc-hello.zip: main
	mkdir -p build
	cp $^ lambda-proc-hello.js build/
	chmod -R a+r build/*
	chmod -R a-w build/*
	chmod a+x build/main
	zip -Xjr $@ build
	rm -rf build

main: main.go
	docker-compose run build bash -c 'go get && go build $<'

.PHONY: clean
clean:
	rm -rf main lambda-proc-hello.zip build
