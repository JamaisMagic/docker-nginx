FROM nginx:alpine as development

RUN rm /etc/nginx/conf.d/*

COPY ./nginx.conf /etc/nginx/
COPY ./conf.d/qa.www.picoluna.com.nginx.conf /etc/nginx/conf.d/


FROM nginx:alpine as production

RUN rm /etc/nginx/conf.d/*

COPY ./fullchain.pem /etc/letsencrypt/live/picoluna.com/
COPY ./privkey.pem /etc/letsencrypt/live/picoluna.com/
COPY ./nginx.conf /etc/nginx/
COPY ./conf.d/www.picoluna.com.nginx.conf /etc/nginx/conf.d/
