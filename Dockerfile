FROM ubuntu:20.04
RUN apt update -y && apt install -y  nginx nano curl 
COPY ./index.html /var/www/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
