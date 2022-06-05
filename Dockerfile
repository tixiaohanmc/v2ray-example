FROM debian
RUN apt update
RUN apt upgrade -y
RUN apt install wget curl -y
RUN bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
RUN rm -rf /usr/local/etc/v2ray/config.json
RUN wget -O /usr/local/etc/v2ray/config.json https://raw.githubusercontent.com/tixiaohanmc/v2ray-example/main/config.json
RUN chmod +x /usr/local/bin/v2ray
CMD ["/usr/local/bin/v2ray"]
