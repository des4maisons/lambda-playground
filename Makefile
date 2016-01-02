GOPATH ?= $(HOME)/projects/go-workspace

.PHONY: all
all: hello.zip

hello.zip: hello
	zip $@ lambda-hello.js $<

hello: hello.go
	docker-compose run build

.PHONY: clean
clean:
	rm -f hello hello.zip
