DOCKER_REPO := ???
APP = recommender
TAG = latest

build:
	docker build .

push: build
	docker push $(DOCKER_REPO)/$(APP):$(TAG)
