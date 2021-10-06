# Build hello world
FROM golang:1.17 AS builder

# Make a working directory
WORKDIR /usr/local/src/hello-world

# Copy the source code
COPY . .

# Build helloworld
RUN go build -o /usr/local/bin/hello-world src/*.go

ENTRYPOINT [ "/usr/local/bin/hello-world" ]
