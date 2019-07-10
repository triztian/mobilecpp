
Mobilecpp.framework:
	gomobile bind -target=ios/arm,ios/arm64,ios/amd64 github.com/triztian/mobilecpp

libLinkMobile.a:
	xcodebuild -project liblinkmobile/LinkMobile.xcodeproj -target LinkMobile build
	xcodebuild -project liblinkmobile/LinkMobile.xcodeproj -target LinkMobile -showBuildSettings

clean:
	@rm -fv libLinkMobile.a
