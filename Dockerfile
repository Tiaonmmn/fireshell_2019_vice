FROM tiaonmmn/alpine-apache2-php7
COPY files/ /tmp/
RUN apk add php7-curl &&\
    mv /tmp/app/* /app/public/ &&\
    chown -R apache:apache /app/public/
EXPOSE 80