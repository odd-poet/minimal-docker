#==============================================================================
# minimal nginx
#==============================================================================
FROM oddpoet/minimal-nginx:1.12.0-r2
MAINTAINER yunsang.choi<oddpoet@gmail.com>


# install node
ENV NODE_VERSION   "7.10.1-r1"
RUN apk --update add \
    "nodejs-current-npm=${NODE_VERSION}"
