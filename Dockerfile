FROM nginx:stable
RUN apt update -y && apt install -y nano curl 
COPY ./index.html /var/www/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
