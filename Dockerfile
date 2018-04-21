FROM golang:1.10.1-alpine
MAINTAINER Oleg Litvin, olitvin@gmail.com

ARG PACKAGE=github.com/olitvin/go-syslog
ENV HOST ":10514"

COPY . $GOPATH/src/$PACKAGE
WORKDIR $GOPATH/src/$PACKAGE
RUN go install -v .
EXPOSE 10154
ENTRYPOINT ["go-syslog"]
