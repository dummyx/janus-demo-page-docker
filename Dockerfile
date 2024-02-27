FROM ubuntu:latest as builder

RUN apt-get update && apt-get install -y git

WORKDIR /tmp

RUN git clone --depth 1 --branch v1.2.1 https://github.com/meetecho/janus-gateway.git 

FROM nginx:latest


FROM nginx

COPY --from=builder /tmp/janus-gateway/html /usr/share/nginx/html


EXPOSE 80/tcp
