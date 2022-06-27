.PHONY: all
all:	install-dependencies	\
	clean			\
	build


.PHONY: install-dependencies
install-dependencies:
	npm install


.PHONY: clean
clean:
	rm -rf 'dist'


.PHONY: build
build:
	npm run build


.PHONY: test
test:
	(cd 'dist' && http-server)

