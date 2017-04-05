#==============================================================================
# alpine-base
#==============================================================================
FROM alpine:3.5
MAINTAINER yunsang.choi<oddpoet@gmail.com>

# Install basic tools
RUN apk --update add curl tar zip unzip bash shadow
# install glibc
RUN curl -Ls https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-2.25-r0.apk > /tmp/glibc-2.25-r0.apk && \
    apk add --allow-untrusted /tmp/glibc-2.25-r0.apk
# chsh in 'shadow' package
RUN chsh root -s /bin/bash
