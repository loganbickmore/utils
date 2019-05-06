name := loganbickmore/utils

alpine:
	docker build -t $(name) -f Dockerfile.alpine-utils .
	docker tag $(name):latest $(name):alpine
	docker push $(name):alpine

ubuntu:
	docker build -t $(name) -f Dockerfile.ubuntu-utils .
	docker tag $(name):latest $(name):ubuntu
	docker push $(name):ubuntu

