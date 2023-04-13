phony: docker-build
docker-build:
	docker build . -t ansible.init

phony: docker-run
docker-run:
	docker run --rm -it ansible.init bash

phony: dev
dev:
	make docker-build && make docker-run

