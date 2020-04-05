FROM alpine

LABEL Maintainer 19 Signals <info@19signals.com>

RUN apk --update add git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/* && \
    mkdir /root/.ssh

VOLUME /git
WORKDIR /git


CMD ["git"]