FROM nginx:stable
RUN apt update \
 && apt install -y \
    nano \
    curl
COPY index.html /usr/share/nginx/html/index.html


EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


