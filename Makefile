all:
	docker build --tag cadizm/sleep-api .

run:
	docker run --rm -p 8000:8000 cadizm/sleep-api

push:
	docker push cadizm/sleep-api

.PHONY: all run push
