FROM ubuntu:latest
RUN \
    apt update && \
    apt upgrade -y && \
    apt install --fix-missing --no-install-recommends -y git curl ca-certificates
COPY rng.sh /root
RUN chmod 0777 /root/rng.sh
RUN git clone https://github.com/crypt1d/redi.sh /redisClient
EXPOSE 80
ENV REDIS_HOST=""
ENV REDIS_PORT=""
CMD [ "/root/rng.sh" ]