FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER lxcloud@gmail.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /lxcloud/bin/com.lxmicroservices/lxcloud-mall

WORKDIR /lxcloud/bin/com.lxmicroservices/lxcloud-mall

EXPOSE 5050

ADD ./lxcloud-mall/lxcloud-mall-biz/target/lxcloud-mall-biz.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -Xms2048m -Xmx2048m  -jar lxcloud-mall-biz.jar

