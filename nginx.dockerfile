FROM nginx:stable-alpine

ADD ./nginx/templates /etc/nginx/templates
ADD ./nginx/certs /etc/nginx/certs/self-signed

RUN mkdir -p /var/www/html
