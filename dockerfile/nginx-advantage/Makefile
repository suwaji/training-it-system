include .env

ifeq ($(UNAME),Darwin)
    SHELL	:= /opt/local/bin/bash
    OS_X	:= true
else ifneq (,$(wildcard /etc/redhat-release))
    OS_RHEL	:= true
else
    OS_DEB	:= true
    SHELL	:= /bin/bash
endif

DDATE := $(shell date +%F)
DOCKER_ALPINE_VERSION := $(shell echo "${DOCKER}" | rev | cut -c -4 | rev)
IMAGE_RELEASE := "$(NGINX_VERSION)-$(DOCKER)"

export

.PHONY: docker-build docker-push destroy

all: docker-build docker-push

docker-build:
	@docker build --build-arg DOCKER_ALPINE_VERSION=${DOCKER_ALPINE_VERSION} \
					--build-arg NGINX_VERSION=${NGINX_VERSION} \
					-t ${REGISTRY}/${REPOSITORY}:${IMAGE_RELEASE} .
	@docker tag ${REGISTRY}/${REPOSITORY}:${IMAGE_RELEASE} ${REGISTRY}/${REPOSITORY}:latest
	@sleep 2

docker-push: docker-build
	@docker push ${REGISTRY}/${REPOSITORY}:latest
	@docker push ${REGISTRY}/${REPOSITORY}:${IMAGE_RELEASE}
	@sleep 2