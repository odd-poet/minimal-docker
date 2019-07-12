#==============================================================================
# minimal nginx
#==============================================================================
FROM ubuntu:18.04
LABEL maintainer="yunsang.choi<oddpoet@gmail.com>"


ENV NGINX_VERSION   1.14.0-0ubuntu1.2
RUN apt-get update
RUN apt-get install -y curl zip unzip vim && apt-get clean
RUN apt-get install -y nginx=${NGINX_VERSION} && apt-get clean


