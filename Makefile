go-install-grpc:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2

gen-proto:
	protoc --proto_path=proto proto/*.proto --go_out=.

clean:
	rm pb/*.go

runs:
	go run main.go