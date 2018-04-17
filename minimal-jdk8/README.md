## minimal-jdk8

[oddpoet/minimal-jdk8](https://hub.docker.com/r/oddpoet/minimal-jdk8/)

It contains only oracle jdk8.

- version: `jdk8-u162`
- size: about 141MB
- linux: `ubuntu:16.04`

To set the locale, see blew.
(ref: https://hub.docker.com/r/library/ubuntu/)

```
RUN apt-get install -y locales
RUN rm -rf /var/lib/apt/lists/* \
    && localedef -i ko_KR -c -f UTF-8 -A /usr/share/locale/locale.alias ko_KR.UTF-8
ENV LANG ko_KR.utf8
```
