FROM nginx:alpine
ENV TIMEZONE Europe/Paris
RUN apk update && apk upgrade 
EXPOSE 3000
ENTRYPOINT [ "usr/sbin/nginx","-g","daemon off;" ]