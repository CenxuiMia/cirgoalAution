build:
	go get github.com/aws/aws-lambda-go/lambda
	go get github.com/aws/aws-lambda-go/events
	env GOOS=linux go build -ldflags="-s -w" -o bin/product/get product/get/main.go
	env GOOS=linux go build -ldflags="-s -w" -o bin/product/put product/put/main.go
	env GOOS=linux go build -ldflags="-s -w" -o bin/product/post product/post/main.go
	env GOOS=linux go build -ldflags="-s -w" -o bin/product/delete product/delete/main.go
