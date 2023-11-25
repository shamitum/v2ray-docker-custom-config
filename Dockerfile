FROM alpine:latest

WORKDIR /v2ray

COPY config.json .
COPY start.sh .
RUN chmod +x ./start.sh

ENTRYPOINT ["./start.sh"]
