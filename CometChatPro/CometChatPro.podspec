
Pod::Spec.new do |spec|
  spec.name             = 'CometChatPro'
  spec.version          = '3.0.911-beta2'
  spec.license          =  {:type => 'MIT', :file => 'License.md'}
  spec.homepage         = 'https://www.cometchat.com/pro'
  spec.authors          = {  'Abhishek Saralaya' => 'abhishek.saralaya@inscripts.in', 'pushpsen' => 'pushpsen.airekar@inscripts.com'}
  spec.summary          = 'CometChatPro is a platform for integrating voice, video & text messaging experiences into your websites, web apps and mobile apps'
  spec.source          = { :http => 'https://library.cometchat.io/ios/v3.0/xcode13/CometChatPro_3_0_911-beta2.zip'}
  spec.library          = 'z', 'sqlite3', 'xml2.2'
  spec.xcconfig         = {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  spec.documentation_url = 'https://www.cometchat.com/docs/ios-chat-sdk/overview'
  spec.vendored_frameworks = 'Vendors/CometChatPro.xcframework', 'Vendors/CometChatStarscream.xcframework'
  spec.exclude_files    = "Classes/Exclude"
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.platform         = :ios, "11.0"
end
