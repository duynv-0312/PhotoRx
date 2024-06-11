# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'WallPaperRx' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for WallPaperRx
  pod 'Then', '3.0.0'
  pod 'SDWebImage', '~> 5.0'
  pod 'ObjectMapper', '~> 4.4.2'
  pod 'RxSwift', '6.5.0'
  pod 'RxCocoa', '6.5.0'
  pod 'Alamofire', '~> 5.9.1'
  pod 'Reusable', '4.1.2'
  pod 'Localize-Swift', '~> 3.2'
  pod 'MBProgressHUD', '~> 1.2.0'
  pod 'Moya/RxSwift', '~> 15.0.0'
  pod 'RxDataSources', '~> 5.0'

end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
    end
  end
end
