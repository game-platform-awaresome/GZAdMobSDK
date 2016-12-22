Pod::Spec.new do |spec|
spec.name             = 'GZAdMobSDK'
spec.version          = '1.0'
spec.summary          = 'Guide for private pods : 广告聚合sdk'
spec.description      = <<-DESC
Testing Private Podspec.

* Markdown format.
* Don't worry about the indent, we strip it!
DESC
spec.homepage         = 'https://github.com/poormonkey/GZAdMobSDK/'
spec.license          = { :type => 'MIT', :file => 'LICENSE' }
spec.author           = { 'GameZoo' => '565705232@qq.cn' }
spec.source           = { :git => 'https://github.com/poormonkey/GZAdMobSDK.git', :tag => spec.version.to_s }
spec.ios.deployment_target = '8.0'
spec.source_files = 'GZAdMobSDK/Classes/*.{h,m}', 'GZAdMobSDK/Classes/ThirdParty/*.{h,m}'
spec.vendored_libraries  = 'GZAdMobSDK/Classes/ThirdParty/*.{a}'
spec.frameworks ='AdSupport','CoreLocation','QuartzCore','SystemConfiguration','CoreTelephony','Security','StoreKit'
spec.libraries  = 'z'
end
