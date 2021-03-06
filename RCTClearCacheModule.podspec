require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'RCTClearCacheModule'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/peeglelive/react-native-clear-app-cache.git', :tag => "v#{s.version}" }

  s.requires_arc   = true
  s.static_framework = true
  s.platform       = :ios, '9.0'
  s.preserve_paths = 'LICENSE', 'README.md'

  s.source_files  = "ios/RCTClearCacheModule/*.{h,m}"
  s.dependency "React"
end
