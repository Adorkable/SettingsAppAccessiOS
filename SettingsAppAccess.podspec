Pod::Spec.new do |s|

  s.name         = "SettingsAppAccess"
  s.version      = "1.0.3"
  s.summary      = "send your user to various locations within iOS' Settings app"

  s.homepage     = "https://github.com/Adorkable/SettingsAppAccessiOS.git"

  s.author       = { "Ian G" => "yo.ian.g@gmail.com" }
  s.platform     = :ios, "9.0"

  s.license      = "MIT"

  s.source       = { :git => "https://github.com/Adorkable/SettingsAppAccessiOS.git", :tag => s.version.to_s }

  s.source_files = "SettingsAppAccess/**/*.swift"
  s.resources = [ 'SettingsAppAccess/*.lproj' ]
  s.requires_arc = true
end
