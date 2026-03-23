IMAGE_NAME  = docs-site
PORT        = 3000

.PHONY: install start build serve clear \
        docker-build docker-run docker-up docker-stop docker-clean

## Install dependencies with Bun
install:
	bun install

## Start development server (hot reload)
start:
	bun run start

## Build the static site (uses SWC + Rspack via @docusaurus/faster)
build:
	bun run build

## Serve the previously built site locally
serve:
	bun run serve

## Clear Docusaurus cache and build artifacts
clear:
	bun run clear

# ── Docker ────────────────────────────────────────────────────────────────────

## Build the production Docker image
docker-build:
	docker build -t $(IMAGE_NAME) .

## Run the production image locally
docker-run:
	docker run --rm -it \
		--name $(IMAGE_NAME) \
		-p $(PORT):3000 \
		$(IMAGE_NAME)

## Build and run in one step
docker-up: docker-build docker-run

## Stop the running container
docker-stop:
	docker stop $(IMAGE_NAME)

## Remove the image
docker-clean:
	docker rmi $(IMAGE_NAME)
