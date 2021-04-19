FROM alpine

RUN apk update && \
    apk add --upgrade \
    gnuplot \
    fontconfig \
    ttf-freefont \
    msttcorefonts-installer && \
    update-ms-fonts && \
    fc-cache -f && \
    rm -rf /var/cache/apk/*
