BIN = node_modules/.bin

.PHONY: bootstrap lint start test

bootstrap:
	npm install

test:
	newman run PayAsYouGo.postman_collection.json -e AsYouGo.postman_environment.json
