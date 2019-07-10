
Mobilecpp.framework:
	gomobile bind -target=ios/arm,ios/arm64,ios/amd64 github.com/triztian/mobilecpp

libLinkMobile.a:
	xcodebuild -project liblinkmobile/LinkMobile.xcodeproj -target LinkMobile -configuration Debug build
	find . -name libLinkMobile.a -exec cp -v {} ./ \;

clean:
	@rm -fv libLinkMobile.a