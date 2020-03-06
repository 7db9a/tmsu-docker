FROM golang:1.14.0-buster
RUN apt-get update && apt-get install -y \
        fuse \
        git
RUN go env -w GOPATH=$HOME/go && \
    go get -u golang.org/x/crypto/blake2b && \
    go get -u github.com/mattn/go-sqlite3 && \
    go get -u github.com/hanwen/go-fuse/fs
RUN git clone -b v0.7.5 https://github.com/oniony/TMSU.git /TMSU
WORKDIR /TMSU
RUN make && make install
WORKDIR /working
