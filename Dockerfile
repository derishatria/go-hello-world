FROM golang:1.8

WORKDIR /go/src

COPY main.go .

RUN go build -o main .

CMD [ "./main" ]
