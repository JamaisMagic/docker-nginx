FROM nginx:alpine as development

RUN rm /etc/nginx/conf.d/*

COPY ./nginx.conf /etc/nginx/
COPY ./conf.d/qa.www.picoluna.com.nginx.conf /etc/nginx/conf.d/


FROM nginx:alpine as production

RUN rm /etc/nginx/conf.d/*

COPY /etc/letsencrypt/live/picoluna.com/fullchain.pem /etc/letsencrypt/live/picoluna.com/
COPY /etc/letsencrypt/live/picoluna.com/privkey.pem /etc/letsencrypt/live/picoluna.com/
COPY ./nginx.conf /etc/nginx/
COPY ./conf.d/www.picoluna.com.nginx.conf /etc/nginx/conf.d/
