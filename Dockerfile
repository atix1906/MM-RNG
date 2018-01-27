FROM ubuntu:latest
COPY rng.sh /root
RUN chmod 0777 /root/rng.sh
EXPOSE 80
CMD [ "/root/rng.sh" ]