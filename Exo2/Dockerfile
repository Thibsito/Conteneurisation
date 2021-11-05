ARG VERSION=3.13
FROM alpine:$VERSION as builder
ARG VERSION
RUN apk update && apk upgrade && apk --update --no-cache add bash
RUN echo "$VERSION Test" > /messages.txt
FROM alpine:$VERSION
WORKDIR /opt
COPY --from=builder /messages.txt /opt/new.messages.txt
CMD ["cat","/opt/new.messages.txt"]