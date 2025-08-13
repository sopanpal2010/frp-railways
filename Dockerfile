FROM alpine:latest
RUN apk add --no-cache wget tar
RUN wget https://github.com/fatedier/frp/releases/latest/download/frp_0.62.0_linux_amd64.tar.gz && \
    tar -xvzf frp_0.62.0_linux_amd64.tar.gz && mv frp_0.62.0_linux_amd64 /frp
WORKDIR /frp
CMD ["./frps", "-c", "frps.ini"]
