#!/usr/bin/env bash

CURPATH=$(cd $(dirname $0); pwd)
JAVA_MAJOR_VERSION=`cat $CURPATH/Dockerfile | grep -E '^ENV\s+JAVA_MAJOR_VERSION' | awk '{print $3}'`
JAVA_UPDATE_VERSION=`cat $CURPATH/Dockerfile | grep -E '^ENV\s+JAVA_UPDATE_VERSION' | awk '{print $3}'`

IMAGE_VERSION="${JAVA_MAJOR_VERSION}u${JAVA_UPDATE_VERSION}"
IMAGE_NAME="oddpoet/minimal-jdk8"


echo "Build Docker Image : $IMAGE_NAME:$IMAGE_VERSION"
cd $CURPATH
docker build \
  -t $IMAGE_NAME:$IMAGE_VERSION \
  -t $IMAGE_NAME:latest \
  .
