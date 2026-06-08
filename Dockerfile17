FROM eclipse-temurin:17-jdk-alpine

LABEL maintainer="jalena@bcsytv.com"

RUN apk --no-cache --update add tzdata fontconfig ttf-dejavu && \
    fc-cache --force && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

COPY ./font /usr/share/fonts/win/
