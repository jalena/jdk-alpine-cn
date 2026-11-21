# syntax=docker/dockerfile:1

ARG JAVA_VERSION=17
ARG JAVA_TYPE=jdk

FROM eclipse-temurin:${JAVA_VERSION}-${JAVA_TYPE}-alpine

LABEL maintainer="jalena@bcsytv.com"

ENV TZ=Asia/Shanghai

COPY ./font /usr/share/fonts/win/

RUN apk add --no-cache tzdata fontconfig ttf-dejavu ca-certificates && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    fc-cache -fv
