lint:
	go get golang.org/x/tools/cmd/goimports
	goimports -w .

build:
	go build -o bin

run: build
	bin/see-nate-go

delve:
	go get github.com/go-delve/delve/cmd/dlv