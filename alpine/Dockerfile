FROM alpine:3.6
LABEL cyy 2214695946@qq.com

# 换为国内镜像，以加速docker image制作速度，非中国镜内用户请注释掉下一行
COPY repositories /etc/apk/repositories
#时区配置
ENV TIMEZONE Asia/Shanghai
RUN apk update && apk upgrade;\
    apk add tzdata;\
    ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime;\
    echo $TIMEZONE > /etc/timezone;\
    rm -rf /var/cache/apk/* ;\
    rm -rf /tmp/*
    
# 容器命令执行
CMD ["sh"]
