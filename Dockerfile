FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
#COPY index.html /usr/share/nginx/html
RUN rm /usr/share/nginx/html/*.html
WORKDIR /usr/share/nginx/html
COPY html/*.zip /usr/share/nginx/html/
EXPOSE 80
