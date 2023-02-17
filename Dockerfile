FROM golang:1.19.5-alpine3.17 as build

ENV GOPATH /go

WORKDIR $GOPATH/src/app

COPY . .

RUN go mod download

RUN GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -o website

RUN chmod +x website

FROM alpine:3.17

COPY --from=build go/src/app/views /views
COPY --from=build go/src/app/website /

EXPOSE 3000

ENTRYPOINT [ "/website" ]