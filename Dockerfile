FROM nginx:stable
RUN apt update \
 && apt install -y \
    nano \
    curl
COPY index.html /usr/share/nginx/html/index.html
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


