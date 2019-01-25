Pod::Spec.new do |s|
  s.name = 'OAuthSwift'
  s.version = '1.2.2'
  s.license = 'MIT'
  s.summary = 'Swift based OAuth library for iOS and macOS.'
  s.homepage = 'https://github.com/OAuthSwift/OAuthSwift'
  s.social_media_url = 'http://twitter.com/dongrify'
  s.authors = {
    'Dongri Jin' => 'dongrify@gmail.com',
    'Eric Marchand' => 'eric.marchand.n7@gmail.com'
  }
  s.source = { git: 'https://github.com/OAuthSwift/OAuthSwift.git', tag: s.version }

  s.default_subspec = 'Core' do |core|
    core.source_files = 'Sources/*.swift'
  end

  s.subspec = 'AppExtension' do |ext|
    ext.source_files = 'Sources/*.swift'
    # For app extensions, disabling code paths using unavailable API
    ext.pod_target_xcconfig =   'OTHER_SWIFT_FLAGS[config=Debug]' => '-DOAUTH_APP_EXTENSIONS'
	ext.pod_target_xcconfig =   'OTHER_SWIFT_FLAGS[config=Release]' => '-DOAUTH_APP_EXTENSIONS'
  end
  
  s.swift_version = '4.2'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.requires_arc = false
end
