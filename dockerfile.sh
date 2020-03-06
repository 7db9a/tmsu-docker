#!/bin/sh

#define parameters which are passed in.
VERSION=$1
#define the template.
cat  << EOF
FROM golang:1.14.0-buster
RUN apt-get update && apt-get install -y \\
        fuse \\
        git
RUN go env -w GOPATH=\$HOME/go && \\
    go get -u golang.org/x/crypto/blake2b && \\
    go get -u github.com/mattn/go-sqlite3 && \\
    go get -u github.com/hanwen/go-fuse/fs
RUN git clone -b $VERSION https://github.com/oniony/TMSU.git /TMSU
WORKDIR /TMSU
RUN make && make install
WORKDIR /working
EOF
