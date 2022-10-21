FROM nginx

USER root

COPY ./server.c /home/server.c
COPY ./serv.sh /home/serv.sh
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

RUN apt-get update ; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev;

WORKDIR  /home/

ENTRYPOINT ["sh", "./serv.sh"]