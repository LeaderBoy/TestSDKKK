#
# Be sure to run `pod lib lint TestSDKKK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestSDKKK'
  s.version          = '0.2.3'
  s.summary          = 'We recommend including a description with your session to give some context when you list your sessions later. For example:'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
We recommend including a description with your session to give some context when you list your sessions later. For example:We recommend including a description with your session to give some context when you list your sessions later. For example:We recommend including a description with your session to give some context when you list your sessions later. For example:
                       DESC

  s.homepage         = 'https://github.com/LeaderBoy/TestSDKKK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LeaderBoy' => '748603349@qq.com' }
  s.source           = { :git => 'https://github.com/LeaderBoy/TestSDKKK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TestSDKKK/Classes/**/*'
  
  s.resource_bundles = {
     'TestSDKKK' => ['TestSDKKK/Assets/*.{xib,png}']
  }

  s.public_header_files = 'TestSDKKK/Classes/**/*.h'
  
  
  #需要包含的源文件
  #s.source_files = 'TestSDKKK/TestSDKKK.framework/Versions/A/Headers/*.{h}'

  #你的SDK路径
  #s.vendored_frameworks = 'TestSDKKK/TestSDKKK.framework'

  #SDK头文件路径
  #s.public_header_files = 'TestSDKKK/TestSDKKK.framework/Versions/A/Headers/*.h'
  
  #s.frameworks   = 'UIKit','Foundation',''
  s.framework      = 'SystemConfiguration','MobileCoreServices'

  s.frameworks = 'UIKit'
  s.dependency 'AFNetworking'
  s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }

end
