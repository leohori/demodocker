FROM nginx:1.16.1-alpine
COPY app/* /usr/share/nginx/html/
