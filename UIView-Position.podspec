#
# Be sure to run `pod lib lint UIView-Position.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIView-Position'
  s.version          = '0.1.2'
  s.summary          = 'convenient modify UIView frame by UIView-Position.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  support left, right, top, bottom, centerX, centerY , and so on
                       DESC

  s.homepage         = 'https://github.com/wenluma/UIView-Position'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wenluma' => 'wenluma_521@163.com' }
  s.source           = { :git => 'https://github.com/wenluma/UIView-Position.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'UIView-Position/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UIView-Position' => ['UIView-Position/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
