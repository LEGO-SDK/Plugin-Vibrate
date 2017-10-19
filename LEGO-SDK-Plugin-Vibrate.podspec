Pod::Spec.new do |s|

  s.name         = "LEGO-SDK-Plugin-Vibrate"
  s.version      = "0.0.1"
  s.summary      = "A short description of LEGO-SDK-Plugin-Vibrate."
  s.description  = <<-DESC
                   DESC
  s.homepage     = "https://github.com/LEGO-SDK/Plugin-Vibrate"
  s.license      = "MIT (example)"
  s.author             = Kopus
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/LEGO-SDK/Plugin-Vibrate.git" }
  s.source_files  = "ios/Source/*.{h,m}"
  s.requires_arc = true

end
