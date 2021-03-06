Pod::Spec.new do |s|
  s.name = "TestSDKKK"
  s.version = "0.0.3"
  s.summary = "We recommend including a description with your session to give some context when you list your sessions later. For example:"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"LeaderBoy"=>"748603349@qq.com"}
  s.homepage = "https://github.com/LeaderBoy/TestSDKKK"
  s.description = "We recommend including a description with your session to give some context when you list your sessions later. For example:We recommend including a description with your session to give some context when you list your sessions later. For example:We recommend including a description with your session to give some context when you list your sessions later. For example:"
  s.frameworks = "UIKit"
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/TestSDKKK.framework'
end
