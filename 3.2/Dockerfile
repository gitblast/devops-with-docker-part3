FROM alpine

WORKDIR /app

COPY ./main.sh ./main.sh

RUN chmod +x main.sh && apk update && apk add git && apk add docker

ENTRYPOINT [ "/app/main.sh" ]