# golang/go: issue 

This projects aims to reproduce an issue when linking C++ code using gomobile

Basically the project consists of the following:

 * A arm64, armv7 static library that will provide 3 functions
 * 2 Go functions that use the external provided functions


### Building Mobilecpp.framework

```bash
make Mobilecpp.framework
```

> NOTE: running just `make` should also work

### Building `libLinkMobile.a`

The following should build the library and copy it into the root of the project.

```bash
make libLinkMobile.a
```