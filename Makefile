.PHONY: libLinkMobile

Mobilecpp.framework:
	#gomobilex bind -target=ios/arm,ios/arm64 github.com/triztian/mobilecpp
	# gomobilex bind -target=ios/arm,ios/arm64,ios/amd64 github.com/triztian/mobilecpp
	gomobilex bind -target=ios github.com/triztian/mobilecpp

libLinkMobile:
	xcodebuild -project liblinkmobile/LinkMobile.xcodeproj \
		-target LinkMobile.ios -configuration Debug clean build \
		ENABLE_BITCODE=YES
		
	xcodebuild -project liblinkmobile/LinkMobile.xcodeproj \
		-arch x86_64 -arch i386 -sdk iphonesimulator12.2 \
		-target LinkMobile.ios -configuration Debug build \
		TARGET_NAME=LinkMobile.sim VALID_ARCHS="x86_64 i386" \
		ENABLE_BITCODE=YES

	find . -name '*LinkMobile*.a';

	find ./liblinkmobile/build/Debug-iphonesimulator/ ./liblinkmobile/build/Debug-iphoneos -name '*LinkMobile*.a' -exec cp -v {} ./ \;
	lipo -archs libLinkMobile.ios.a
	lipo -archs libLinkMobile.sim.a
	
	lipo -create libLinkMobile.ios.a libLinkMobile.sim.a -output libLinkMobile.universal.a
	@echo ' ------- '
	lipo -archs libLinkMobile.universal.a

clean:
	@rm -fvr libLinkMobile.*.a Mobilecpp.framework ./liblinkmobile/build/
