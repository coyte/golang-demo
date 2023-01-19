FROM golang:1.19-alpine
WORKDIR /app
COPY ./app /app/
RUN go build -o app main.go
CMD ./app