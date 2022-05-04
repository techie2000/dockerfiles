# syntax=docker/dockerfile:1

## We specify the base image we need for our
## go application
FROM golang:1.16-alpine

## We specify that we now wish to execute 
## any further commands inside our /app
## directory
WORKDIR /app

# We install the app as per developer notes at https://github.com/ogham/exa
RUN apk add exa

## Our start command which kicks off
## our newly created binary executable
CMD ["/app/main"]
