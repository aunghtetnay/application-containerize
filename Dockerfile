FROM alpine:latest
RUN apk add nginx
WORKDIR /var/www/html
COPY simple-web /var/www/html/
COPY default.conf /etc/nginx/http.d
COPY ahn.conf /etc/nginx/http.d
CMD [ "nginx","-g","daemon off;" ]
EXPOSE 8888:80
# VOLUME [ "/data" ]