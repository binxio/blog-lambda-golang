#!/bin/bash
export GOOS=linux
export GOPATH=`pwd`
export GOBIN=$GOPATH/bin
export PATH=$(go env GOPATH)/bin:$PATH
rm main
go get github.com/aws/aws-lambda-go/lambda
go build src/github.com/dnvriend/lambda/main.go
mkdir -p dist
zip dist/lambda.zip main
rm main