arch-agnostic:
	docker buildx build \
	--no-cache \
	-f src/Dockerfile \
	-t acnpublic.azurecr.io/arm64-demo:latest \
	--platform=linux/amd64,linux/arm64 \
	--push \
	.

local-architecture:
	docker build \
	-f src/Dockerfile \
	-t acnpublic.azurecr.io/arm64-demo:latest \
	.

# Don't do this, build the binary in the Dockerfile
build-binary:
	go build -o /usr/local/bin/hello-world src/*.go