.PHONY: libLinkMobile

Mobilecpp.framework:
	#gomobilex bind -target=ios/arm,ios/arm64 github.com/triztian/mobilecpp
	gomobilex bind -target=ios/arm,ios/arm64 github.com/triztian/mobilecpp
	#gomobilex bind -target=ios github.com/triztian/mobilecpp

libLinkMobile:
	xcodebuild -project liblinkmobile/LinkMobile.xcodeproj -alltargets -configuration Release build
	find . -name 'libLinkMobile.*.a' -exec cp -v {} ./ \;
	lipo -archs libLinkMobile.ios.a
	lipo -archs libLinkMobile.osx.a

clean:
	@rm -fvr libLinkMobile.a Mobilecpp.framework
