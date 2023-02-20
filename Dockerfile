FROM alpine:latest

RUN apk add --update \
        --no-cache \
        --repository http://nl.alpinelinux.org/alpine/edge/main \
        samba-common-tools \
        samba-client \
        samba-server \
    && rm -rf /var/cache/apk/*

#EXPOSE 445/tcp

ENTRYPOINT ["smbd", "--foreground", "--debug-stdout", "--no-process-group"]
CMD []
