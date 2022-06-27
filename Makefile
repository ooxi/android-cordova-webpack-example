.PHONY: all
all:	build-web	\
	build-android


.PHONY: build-web
build-web:
	rm -rf 'webapp-boilerplate/node_modules'

	mc webpack-boilerplate make -C 'webpack-boilerplate'


.PHONY: build-android
build-android:
	rm -rf 'cordova-app/node_modules'
	rm -rf 'cordova-app/platforms'
	rm -rf 'cordova-app/plugins'

	rm -rf 'cordova-app/www'
	cp -r 'webpack-boilerplate/dist' 'cordova-app/www'

	docker run -it --rm --volume ${PWD}:${PWD} --workdir "${PWD}/cordova-app" beevelop/cordova cordova --no-telemetry platform add android
	docker run -it --rm --volume ${PWD}:${PWD} --workdir "${PWD}/cordova-app" beevelop/cordova cordova --no-telemetry build

	sudo chown -R "`id --user`:`id --group`" 'cordova-app'

