# android-cordova-webpack-example

An example on how to combine [Apache Cordova][cordova] and [webpack][webpack] to
create a simple Android application.

The example itself uses [webpack-boilerplate][webpack-boilerplate] and
[docker-cordova][docker-cordova] as scaffolding.


## Quickstart

```
make
```


## Create a new Cordova App

```
docker run -it beevelop/cordova bash
cordova create hello com.example.hello HelloWorld
cordova platform add android
cordova build
```

See [Cordova CLI guide](https://cordova.apache.org/docs/en/11.x/guide/cli/).


[docker-cordova]: https://github.com/beevelop/docker-cordova
[cordova]: https://cordova.apache.org/
[webpack]: https://webpack.js.org/
[webpack-boilerplate]: https://github.com/taniarascia/webpack-boilerplate
