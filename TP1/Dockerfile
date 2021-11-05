ARG VERSION=alpine
FROM nginx:$VERSION
ARG VERSION
RUN apk update && apk upgrade
EXPOSE 80
ENTRYPOINT [ "usr/sbin/nginx","-g","daemon off;" ]