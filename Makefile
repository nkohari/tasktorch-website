BIN=node_modules/.bin
DIST=dist
TEMP=temp
PRODUCTION_BUCKET=tasktorch.com
PREVIEW_BUCKET=preview.tasktorch.com

all: build

clean:
	@rm -rf $(DIST)/*

build: clean
	@NODE_ENV=production $(BIN)/webpack --progress --color --optimize-minimize

compress: build
	@find $(DIST) -type f | while read -r file; do \
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
		s3://$(PRODUCTION_BUCKET)/

preview: compress
	cd $(DIST) && s3cmd put \
		--access_key=$(AWS_ACCESS_KEY_ID) \
		--secret_key=$(AWS_SECRET_ACCESS_KEY) \
		--acl-public \
		--add-header "Content-Encoding: gzip" \
		--recursive . \
		s3://$(PREVIEW_BUCKET)/

dev:
	@$(BIN)/webpack-dev-server --devtool eval --progress --colors --hot --content-base $(TEMP) --port 8888
