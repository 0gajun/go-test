FROM golang:alpine as builder

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN go build -o main main.go

FROM alpine

COPY --from=builder /app/main /main

CMD ["/main"]

