FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY .htpasswd /etc/nginx/pass/.htpasswd
COPY nginx-certificate.crt /etc/nginx/certs/nginx.certificate.crt
COPY nginx.key /etc/nginx/certs/nginx.key
CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;';"]