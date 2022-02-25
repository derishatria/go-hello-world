FROM golang:1.8 as builder

WORKDIR /go/src

COPY main.go .

#Compile For Linux binary
RUN CGO_ENABLED=0 GOOS=linux go build -a -o main .

FROM alpine:latest  

RUN apk --no-cache add ca-certificates

WORKDIR /go/src

COPY --from=builder /go/src/main /go/src

CMD ["./main"]
