GIT_COMMIT := $(shell git rev-list -1 HEAD)


lint:
	go get golang.org/x/tools/cmd/goimports
	goimports -w .

build: lint
	go build -ldflags '-X github.com/natemarks/see-nate-go/version.GitCommit=$(GIT_COMMIT)' -o bin 

run: build
	bin/see-nate-go

delve:
	go get github.com/go-delve/delve/cmd/dlv