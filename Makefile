build:
	GOOS=linux GOARCH=amd64 go build
	docker build --no-cache -t consignment-cli .

run:
	docker run \
	-e MICRO_REGISTRY=mdns \
	--name c-client consignment-cli
