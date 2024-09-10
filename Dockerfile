# Use the official Go image from the Docker Hub
FROM golang:1.17-alpine AS builder

# Set the working directory
WORKDIR /app

# Copy go.mod and go.sum files
COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy the source code
COPY . .

# Build the Go application
RUN go build -o goignite

# Use a smaller base image to run the application
FROM alpine:latest

# Set the working directory
WORKDIR /root/

# Copy the compiled binary from the builder stage
COPY --from=builder /app/goignite .

# Expose the application's port (e.g., 8080)
EXPOSE 8080

# Command to run the application
CMD ["./goignite"]
