#
# Be sure to run `pod lib lint ASCamera.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ASCamera'
  s.version          = '1.0.0'
  s.summary          = 'Camera module for taking photos and video, based on Swifty Cam and MWCamera'
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ASCamera provides a camera module for taking photos and recording videos. Supports camera switching before and during recording on iOS.
                       DESC
  s.homepage         = 'https://github.com/AngelEngineering/ASwfityCamera'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Angel' => 'angel@angelengineering.com' }
  s.source           = { :git => 'https://github.com/AngelEngineering/ASwfityCamera.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/AngelEngineers'
  s.ios.deployment_target = '11.0'
  s.swift_version = '4.2'
  s.source_files = 'ASCamera/Classes/**/*'
  # s.resource_bundles = {
  #   'ASCamera' => ['ASCamera/Assets/*.png']
  # }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
