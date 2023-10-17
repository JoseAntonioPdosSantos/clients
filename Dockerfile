FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY . .
RUN go mod download

RUN go build -o ./clients ./main.go