Pod::Spec.new do |s|
  s.name             = 'Addendum'
  s.version          = '0.4.0'
  s.summary          = 'Extensions to Swift and Cocoa'
  s.swift_version    = '5.0'
  s.description      = <<-DESC
                       Extensions to Swift and Cocoa.
                       DESC
  s.module_name       = 'Addendum'
  s.homepage         = 'https://github.com/lazyvar/Addendum'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mack Hasz' => 'mackhasz33@gmail.com' }
  s.source           = { :git => 'https://github.com/lazyvar/Addendum.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.source_files = 'Addendum/Classes/**/*'
  s.frameworks = 'UIKit'

  # s.resource_bundles = {
  #   'Addendum' => ['Addendum/Assets/*.png']
  # }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end

