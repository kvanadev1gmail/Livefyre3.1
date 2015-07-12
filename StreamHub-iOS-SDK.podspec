Pod::Spec.new do |s|
  s.name         = "StreamHub-iOS-SDK-v3.1"
  s.version      = "0.3.9"
  s.summary      = "A client library for Livefyre's API"
  s.description  = <<-DESC
StreamHub-iOS is the official Livefyre SDK for building real-time native iOS apps that interact with Livefyre services. With it, you can easily create apps that obtain user-generated content sourced by Livefye, poll for updates, and create or modify content.
                   DESC
  s.homepage     = "https://github.com/kvanadev1gmail/Livefyre3.1"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "JJ Weber" => "jj@livefyre.com", "Eugene Scherba" => "escherba@livefyre.com" }
  s.platform     = :ios
  s.ios.deployment_target = '6.0'
  s.ios.prefix_header_file = 'LFSClient/LFSClient-Prefix.pch'
  s.source       = { :git => 'https://github.com/kvanadev1gmail/Livefyre3.1.git', :tag => "0.3.8" }
  #s.resources    = 'LFSClient/Resources/*'
  s.subspec 'core' do |sp|
    sp.source_files = 'LFSClient/**/*.{h,m}'
    sp.requires_arc = true
    sp.dependency 'JWT', '1.0.3'
    sp.dependency 'Base64', '1.0.1'
    sp.dependency 'NSString-Hashes', '1.2.2'
  end
    s.dependency 'AFNetworking', '~> 2.3.1'
  s.dependency 'LFJSONKit', '~> 1.6a'
end
