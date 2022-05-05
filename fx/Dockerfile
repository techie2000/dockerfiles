# syntax=docker/dockerfile:1

## We specify the base image we need for our
## go application
FROM golang:1.17-alpine

RUN apk add wget

## We specify that we now wish to execute 
## any further commands inside our /app
## directory
WORKDIR /tmp

# We install the prepared release fromt he developer at https://github.com/antonmedv/fx
RUN wget https://github.com/antonmedv/fx/archive/refs/tags/23.0.1.tar.gz && \
    tar -xf 23.0.1.tar.gz && \
    rm -rf 23.0.1.tar.gz 

ENV GOPATH /go

ENV PATH $PATH:/go/bin:$GOPATH/bin
# If you enable this, then gcc is needed to debug your app
ENV CGO_ENABLED 0

# Add other dependencies and stuff here

## Our start command which kicks off
## our newly created binary executable
#CMD ["fx"]
