FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

COPY clothing_store.html /usr/share/nginx/html/

# Fix permissions
RUN chmod -R 755 /usr/share/nginx/html