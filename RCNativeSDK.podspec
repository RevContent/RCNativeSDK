Pod::Spec.new do |spec|

  spec.name         = "RCNativeSDK"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift for Revcontent."

  spec.description  = <<-DESC
A CocoaPods library written in Swift for the Revcontent to enables you to receive the same ad fill you would see in our traditional ad placements in a more flexible format.
                   DESC

  spec.homepage     = "https://github.com/RevContent/RCNativeSDK"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Chris" => "chris@revcontent.com" }

  spec.ios.deployment_target = "10.0"
  spec.swift_version = "5.0"

  spec.source        = { :git => "https://github.com/RevContent/RCNativeSDK.git", :tag => "#{spec.version}" }
  spec.source_files  = "RCNativeSDK/**/*.{h,m,swift}"

end