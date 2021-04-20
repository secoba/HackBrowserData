#!/usr/bin/env bash

root="$(pwd)"

GO111MODULE=on GOARCH=amd64 GOOS=darwin CGO_ENABLED=1 go build -mod vendor -ldflags "-s -w" -o "$root/dist/macos/browserhack.mac" "$root/main.go"
GO111MODULE=on GOARCH=amd64 GOOS=linux CGO_ENABLED=1 CC=/usr/local/gcc-4.8.1-for-linux64/bin/x86_64-pc-linux-gcc CXX=/usr/local/gcc-4.8.1-for-linux64/bin/x86_64-pc-linux-g++ GOOS=linux GOARCH=amd64 go build --ldflags "-s -w" -o "$root/dist/linux/browserhack.lin" "$root/main.go"
GO111MODULE=on GOARCH=amd64 GOOS=windows CGO_ENABLED=1 CC=x86_64-w64-mingw32-gcc CXX=x86_64-w64-mingw32-g++ GOOS=windows GOARCH=amd64 go build --ldflags "-s -w" -o "$root/dist/linux/browserhack.lin" "$root/main.go"
