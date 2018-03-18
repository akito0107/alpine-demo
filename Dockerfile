FROM alpine:latest

WORKDIR /app
COPY main /app

EXPOSE 1323

CMD ["./main"]
