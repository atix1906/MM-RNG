FROM ubuntu:latest
RUN \
    apt update && \
    apt upgrade -y && \
    apt install --fix-missing --no-install-recommends -y git curl ca-certificates python3 python3-pip
COPY rng.sh /root
RUN chmod 0777 /root/rng.sh
RUN pip3 install redis
EXPOSE 80
ENV REDIS_HOST=""
ENV REDIS_PORT=6379
CMD [ "/root/rng.sh" ]