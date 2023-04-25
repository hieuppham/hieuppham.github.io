FROM nginx:1.23
LABEL org.opencontainers.image.authors="hieuppham"
WORKDIR /usr/share/nginx/html
COPY . .
EXPOSE 80