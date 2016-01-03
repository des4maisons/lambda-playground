GOPATH ?= $(HOME)/projects/go-workspace

.PHONY: all
all: hello.zip

hello.zip: hello
	mkdir -p build
	cp $< lambda-hello.js build
	chmod -R a+r build/*
	chmod -R a-w build/*
	chmod a+x build/hello
	zip -Xjr $@ build

hello: hello.go
	docker-compose run build go build hello.go

.PHONY: clean
clean:
	rm -rf hello hello.zip build
