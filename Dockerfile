FROM debian
RUN apt update
RUN apt upgrade -y
RUN apt install wget curl unzip -y
RUN mkdir /usr/local/v2ray
RUN wget -O /usr/local/v2ray/v2ray.zip https://github.com/xiaokaixuan/v2ray-heroku/releases/download/v4.40.1/v2ray-linux-64.zip
RUN unzip /usr/local/v2ray/v2ray.zip
RUN mkdir /usr/local/etc
RUN mkdir /usr/local/etc/v2ray
RUN wget -O /usr/local/etc/v2ray/config.json https://raw.githubusercontent.com/tixiaohanmc/v2ray-example/main/config.json
RUN chmod +x /usr/local/v2ray/v2ray
CMD ["/usr/local/v2ray/v2ray","-config=/usr/local/etc/v2ray/config.json"]
