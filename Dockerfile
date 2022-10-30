FROM ubuntu:20.04

USER root

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y telnet
RUN apt-get install -y curl

WORKDIR /var/www/html

COPY index.html .

CMD ["nginx", "-g", "daemon off;"]


