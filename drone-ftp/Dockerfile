FROM alpine:latest

RUN apk --no-cache add \
        lftp \
        ca-certificates \
        libressl \
        openssh \
        bash

ADD upload.sh /bin/
RUN chmod +x /bin/upload.sh

#ENTRYPOINT /bin/upload.sh
