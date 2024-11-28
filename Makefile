.PHONY: docker-build docker-run dev

docker-build:
	docker build -f ./dev/Dockerfile -t ansible.init .

docker-run:
	docker run --rm -it ansible.init bash

dev:
	make docker-build && make docker-run

