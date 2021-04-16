FROM alpine

RUN apk update && \
    apk add --upgrade cairo gnuplot
