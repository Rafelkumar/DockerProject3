FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx
COPY nginxapp /var/www/html
EXPOSE 8080
CMD ["nginx","-g", "daemon off;"]