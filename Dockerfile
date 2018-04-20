FROM golang:alpine

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN go build -o main main.go

CMD ["/app/main"]

