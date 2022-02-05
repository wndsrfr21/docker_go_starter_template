
# The base go-image
FROM golang:1.17-alpine
 
# Create a directory for the app
RUN mkdir /app
RUN go get -u github.com/gin-gonic/gin
 
# Copy all files from the current directory to the app directory
COPY . /app
 
# Set working directory
WORKDIR /app
 
# Run command as described:
# go build will build an executable file named server in the current directory
RUN go build -o server . 
 
# Run the server executable
CMD [ "/app/server" ]
