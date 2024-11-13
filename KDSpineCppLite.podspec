#

#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint spine_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name                = 'KDSpineCppLite'
  s.version             = '1.2.1'
  s.summary             = 'Spine runtimes for iOS.'
  s.description         = <<-DESC
Spine runtimes for iOS.
                       DESC
  s.homepage            = 'https://esotericsoftware.com'
  s.author              = { "Esoteric Software LLC  " => "https://github.com/kindvoon/KDSpineCppLite.git" }
  s.license             = { :file => 'LICENSE' }
  s.platform            = :ios, '13.0'

  s.source              = { :git => 'https://github.com/kindvoon/KDSpineCppLite.git', :tag => s.version.to_s }
  
#  s.frameworks          =  'SpineCppLite.xcframework'
  s.ios.vendored_frameworks = 'SpineCppLite.xcframework'

#  s.module_map          = 'SpineCppLite/spine-cpp/spine-cpp-lite/module.modulemap'
  s.pod_target_xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }

end
