FROM openresty/openresty:1.13.6.2-0-alpine as development

RUN rm /etc/nginx/conf.d/*

COPY ./nginx.conf /etc/nginx/
COPY ./nginx.conf /usr/local/openresty/nginx/conf/
COPY ./conf.d/qa.www.picoluna.com.nginx.conf /etc/nginx/conf.d/
COPY ./conf.d/qa.www.namie.cc.nginx.conf /etc/nginx/conf.d/
COPY ./conf.d/cosqaproxy.picoluna.com.nginx.conf /etc/nginx/conf.d/


FROM openresty/openresty:1.13.6.2-0-alpine as production

RUN rm /etc/nginx/conf.d/*

COPY ./fullchain.pem /etc/letsencrypt/live/picoluna.com/
COPY ./privkey.pem /etc/letsencrypt/live/picoluna.com/
COPY ./nginx.conf /etc/nginx/
COPY ./nginx.conf /usr/local/openresty/nginx/conf/
COPY ./conf.d/www.picoluna.com.nginx.conf /etc/nginx/conf.d/
COPY ./conf.d/www.namie.cc.nginx.conf /etc/nginx/conf.d/
COPY ./conf.d/explorer.picoluna.com.nginx.conf /etc/nginx/conf.d/
COPY ./conf.d/index.resource.picoluna.com.nginx.conf /etc/nginx/conf.d/
COPY ./conf.d/cosqaproxy.picoluna.com.nginx.conf /etc/nginx/conf.d/
