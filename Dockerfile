FROM nginx:1.21.1
LABEL maintainer="Macougoum junie"
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl && \
    apt-get install -y git
RUN rm -Rf /usr/share/nginx/html/*
RUN git clone https://github.com/mjunie/static-website-example.git /usr/share/nginx/html
CMD nginx -g 'daemon off;'
