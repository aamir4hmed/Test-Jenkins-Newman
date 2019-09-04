BIN = node_modules/.bin

.PHONY: bootstrap lint start test

bootstrap:
	npm install
	newman run PayAsYouGo.postman_collection.json -e AsYouGo.postman_environment.json
lint:
	$(BIN)/standard

start:
	${BIN}/nodemon index.js

test:
	make lint
	node index.js &
	newman run PayAsYouGo.postman_collection.json -e AsYouGo.postman_environment.json
