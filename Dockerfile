FROM alpine

RUN apk update && \
    apk add --upgrade \
    gnuplot \
    fontconfig \
    font-ipa \
    msttcorefonts-installer && \
    update-ms-fonts && \
    fc-cache -f && \
    rm -rf /var/cache/apk/*
