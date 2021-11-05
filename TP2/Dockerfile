FROM alpine:latest
ENV MSG "Hello World"
RUN apk update && apk upgrade && apk add bash
ENTRYPOINT ["bash"]
CMD ["-c", "echo $MSG"]