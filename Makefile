BIN=node_modules/.bin
DIST=dist
BUCKET=preview.tasktorch.com

all: build

clean:
	@rm -rf $(DIST)/*

build: clean
	@NODE_ENV=production $(BIN)/webpack --progress --color --optimize-minimize

compress: build
	@ls $(DIST)/* | while read -r file; do \
		echo "Compressing $$file"; \
		gzip -9 -c "$$file" > "$$file.gz"; \
		mv "$$file.gz" "$$file"; \
	done

deploy: compress
	cd $(DIST) && s3cmd put \
		--access_key=$(AWS_ACCESS_KEY_ID) \
		--secret_key=$(AWS_SECRET_ACCESS_KEY) \
		--acl-public \
		--add-header "Content-Encoding: gzip" \
		--recursive . \
		s3://$(BUCKET)/

dev:
	@$(BIN)/webpack-dev-server --devtool eval --progress --colors --hot --content-base $(DIST) --port 9000
