#==============================================================================
# minimal nginx
#==============================================================================
FROM oddpoet/minimal-nginx:1.14.0
LABEL maintainer="yunsang.choi<oddpoet@gmail.com>"

# install node
ENV NODE_VERSION            12.6.0
ENV NODE_PACKAGE_VERSION    12.6.0-1nodesource1

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get update \
    && apt-get install -y nodejs=${NODE_PACKAGE_VERSION} \
    && apt-get clean \
    && npm install -g npm