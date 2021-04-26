FROM alpine

RUN apk update && \
    apk add --upgrade \
    gnuplot \
    fontconfig \
    msttcorefonts-installer && \
    update-ms-fonts && \
    fc-cache -f && \
    rm -rf /var/cache/apk/*
# Download IPA Font
RUN mkdir -p /usr/share/fonts/ipa && \
    wget https://moji.or.jp/wp-content/ipafont/IPAexfont/IPAexfont00401.zip -P /usr/share/fonts/ipa && \
    unzip /usr/share/fonts/ipa/IPAexfont00401.zip -d /usr/share/fonts/ipa && \
    fc-cache -fv && \
    rm -rf /usr/share/fonts/ipa/IPAexfont00401.zip
