FROM alpine

RUN apk update && \
    apk add --upgrade gnuplot cairo
