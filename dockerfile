FROM golang:latest
RUN mkdir /app 
#Making file and name it "app"
ADD . /app
#add all file in to app file
WORKDIR /app
RUN go build -o server .
#Run command "go build -o main" to make app and name it "main"
CMD ["/app/server"]