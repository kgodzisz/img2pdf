FROM alpine

WORKDIR /app

RUN apk --no-cache add py-img2pdf

ENV NAME=default

ENTRYPOINT img2pdf /app/* -o $NAME.pdf
