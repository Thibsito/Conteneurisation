ARG VERSION=3.13
FROM alpine:$VERSION
ARG VERSION
ENV MSG "Hello World"
RUN apk update && apk upgrade && apk add bash
WORKDIR /opt
RUN echo $VERSION
ENTRYPOINT ["bash"]
CMD ["-c", "echo $MSG"]

#docker run -d -p 8001:80 --network="multihost" --name tpa2 tpa