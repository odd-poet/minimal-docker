#==============================================================================
# minimal JDK8
#==============================================================================
FROM oddpoet/alpine-base:3.6
MAINTAINER yunsang.choi<oddpoet@gmail.com>

# Java Version
ENV JAVA_MAJOR_VERSION      8
ENV JAVA_UPDATE_VERSION    131
ENV JAVA_BUILD_VERSION     11
ENV JDK_VERSION             ${JAVA_MAJOR_VERSION}u${JAVA_UPDATE_VERSION}
ENV JAVA_VERSION            1.${JAVA_MAJOR_VERSION}.0_${JAVA_UPDATE_VERSION}-b${JAVA_BUILD_VERSION}
ENV JAVA_PACKAGE            jdk

#--------------------------------------------------------------------------------
# NOTICE:
#  I do not use sdkman to install jdk.
#  If jdk was installed by sdkman, docker image size will be larger then 700MB.
#--------------------------------------------------------------------------------
# Download and unarchive Java
RUN mkdir /opt && curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" \
  http://download.oracle.com/otn-pub/java/jdk/${JAVA_MAJOR_VERSION}u${JAVA_UPDATE_VERSION}-b${JAVA_BUILD_VERSION}/d54c1d3a095b4ff2b6607d096fa80163/${JAVA_PACKAGE}-${JAVA_MAJOR_VERSION}u${JAVA_UPDATE_VERSION}-linux-x64.tar.gz \
    | tar -xzf - -C /opt &&\
    ln -s /opt/jdk1.${JAVA_MAJOR_VERSION}.0_${JAVA_UPDATE_VERSION} /opt/jdk && \
    rm -rf /opt/jdk/*src.zip \
           /opt/jdk/lib/missioncontrol \
           /opt/jdk/lib/visualvm \
           /opt/jdk/lib/*javafx* \
           /opt/jdk/jre/lib/plugin.jar \
           /opt/jdk/jre/lib/ext/jfxrt.jar \
           /opt/jdk/jre/bin/javaws \
           /opt/jdk/jre/lib/javaws.jar \
           /opt/jdk/jre/lib/desktop \
           /opt/jdk/jre/plugin \
           /opt/jdk/jre/lib/deploy* \
           /opt/jdk/jre/lib/*javafx* \
           /opt/jdk/jre/lib/*jfx* \
           /opt/jdk/jre/lib/amd64/libdecora_sse.so \
           /opt/jdk/jre/lib/amd64/libprism_*.so \
           /opt/jdk/jre/lib/amd64/libfxplugins.so \
           /opt/jdk/jre/lib/amd64/libglass.so \
           /opt/jdk/jre/lib/amd64/libgstreamer-lite.so \
           /opt/jdk/jre/lib/amd64/libjavafx*.so \
           /opt/jdk/jre/lib/amd64/libjfx*.so

# Set environment
ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin
