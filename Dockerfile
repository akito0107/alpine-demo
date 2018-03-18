FROM alpine:latest

WORKDIR /app
COPY main /app

EXPORT 1323

CMD ["./main"]
