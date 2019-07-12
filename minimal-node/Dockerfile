#==============================================================================
# minimal nginx
#==============================================================================
FROM oddpoet/minimal-nginx:1.14.0
LABEL maintainer="yunsang.choi<oddpoet@gmail.com>"

# install node
ENV NODE_VERSION            8.10.0
ENV NODE_PACKAGE_VERSION    8.10.0~dfsg-2
ENV NPM_VERSION             3.5.2
ENV NPM_PACKAGE_VERSION     3.5.2-0ubuntu4

RUN apt-get update
RUN apt-get install -y nodejs=${NODE_PACKAGE_VERSION} && apt-get clean
RUN apt-get install -y npm=${NPM_PACKAGE_VERSION} && apt-get clean