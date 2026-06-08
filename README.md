# Java Alpine Base Image

一个基于 **Eclipse Temurin Alpine** 的轻量级 Docker 镜像，预配置：

- 时区：Asia/Shanghai  
- 字体支持：ttf-dejavu + 可自定义字体  
- 字体缓存已刷新（fc-cache）  
- SSL 证书（ca-certificates） 

## 镜像

> latest 版本对其为17版本

- jalena/java/jdk-alpine-cn:latest
- jalena/java/jdk-alpine-cn:17
- jalena/java/jre/alpine-cn:latest
- jalena/java/jre/alpine-cn:17
- jalena/java/jdk/alpine-cn:21
- jalena/java/jre/alpine-cn:21

## 使用方法
```bash
FROM jalena/java/jdk-alpine-cn:latest

LABEL \
  org.opencontainers.image.title="xxxx" \
  org.opencontainers.image.description="网关服务" \
  org.opencontainers.image.version="1.0.0.RELEASE" \
  org.opencontainers.image.authors="xxx@xxx.com"

WORKDIR /gateway

EXPOSE 80

COPY ./target/gateway.jar ./app.jar

ENTRYPOINT ["java", "--add-opens", "java.base/java.lang=ALL-UNNAMED", "--add-opens", "java.base/java.lang.reflect=ALL-UNNAMED",  "-jar", "app.jar"]

CMD ["--spring.profiles.active=test"]
```