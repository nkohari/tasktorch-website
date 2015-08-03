BIN=node_modules/.bin
DIST=dist
BUCKET=static.tasktorch.com

all: build

clean:
	@rm -rf $(DIST)/*

build: clean
	@NODE_ENV=production $(BIN)/webpack --progress --color

bundle: clean
	@NODE_ENV=production $(BIN)/webpack --progress --color --optimize-minimize

dev:
	@$(BIN)/webpack-dev-server --devtool eval --progress --colors --hot --content-base $(DIST) --port 9000
