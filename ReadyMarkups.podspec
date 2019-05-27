Pod::Spec.new do |s|
s.name             = 'ReadyMarkups'
s.version          = '0.1.0'
s.summary          = 'Ready markups'

s.homepage         = 'https://github.com/Brander-ua/ReadyMarkups'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Aleksandr Orlov' => 'luximetr.education@gmail.com' }
s.source           = { :git => 'https://github.com/Brander-ua/ReadyMarkups.git', :tag => s.version.to_s }

s.ios.deployment_target = '10.0'
s.source_files = 'ReadyMarkups/Source/**/*'
s.dependency 'SnapKit', '>= 4.2.0'
s.swift_version = '4.2'

end
