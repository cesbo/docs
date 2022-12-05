MAKEFLAGS = -rR --no-print-directory

.PHONY: all en-alta en-astra en-linux en-book

all: en-alta en-astra en-linux en-book cloudflare-deploy

cloudflare-deploy:
	@echo "Preparing configs for Cloudflare Pages"
	@cp _headers site/
	@cp _redirects site/

en-alta:
	@echo "Alta"
	@mkdocs build -c -f en-alta.yml

en-astra:
	@echo "Astra"
	@mkdocs build -c -f en-astra.yml

en-linux:
	@echo "Utils"
	@mkdocs build -c -f en-linux.yml

en-book:
	@echo "Book"
	@mkdocs build -c -f en-book.yml
