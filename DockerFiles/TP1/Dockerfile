#SERVEUR WEB
ARG VERSION=alpine
FROM nginx:$VERSION
ARG VERSION
RUN apk update && apk upgrade
EXPOSE 80
ENTRYPOINT [ "usr/sbin/nginx","-g","daemon off;" ]

#docker run -d -p 8001:80 --network="multihost" --name tpa2 tpa