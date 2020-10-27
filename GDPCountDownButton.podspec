#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/

Pod::Spec.new do |s|
  s.name         = 'GDPCountDownButton'
  s.version      = '0.0.1'
  s.summary      = '验证码倒计时按钮.'
  s.homepage     = 'https://github.com/sunmumu/GDPCountDownButton'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'sunmumu' => '335089101@qq.com' }
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source       = { :git => 'https://github.com/sunmumu/GDPCountDownButton.git', :tag => s.version.to_s }
  s.requires_arc = true
  s.source_files = 'GDPCountDownButton/**/*.{h,m}'
  s.public_header_files = 'GDPCountDownButton/**/*.{h}'
  
  s.libraries = 'z'
  s.frameworks = 'UIKit'
  

end