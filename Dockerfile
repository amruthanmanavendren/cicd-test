FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

COPY clothing_store.html /usr/share/nginx/html/
