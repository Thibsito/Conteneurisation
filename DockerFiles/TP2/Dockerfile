#SERVEUR HELLO WORLD
FROM alpine:latest
ENV MSG "Hello World"
RUN apk update && apk upgrade && apk add bash && apk add curl
#ENTRYPOINT ["bash"]
#CMD ["-c", "echo $MSG"]
CMD curl -s tpa2
#docker run --network="multihost" --name tpb