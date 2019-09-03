BIN = node_modules/.bin

bootstrap:
	npm install

test:
	newman run PayAsYouGo.postman_collection.json -e AsYouGo.postman_environment.json
