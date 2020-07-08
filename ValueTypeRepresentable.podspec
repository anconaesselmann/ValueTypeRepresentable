Pod::Spec.new do |s|
  s.name             = 'ValueTypeRepresentable'
  s.version          = '0.1.1'
  s.summary          = 'Protocol collection for value type representation'
  s.description      = <<-DESC
Protocol collection for value type representation.
                       DESC

  s.homepage         = 'https://github.com/anconaesselmann/ValueTypeRepresentable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anconaesselmann' => 'axel@anconaesselmann.com' }
  s.source           = { :git => 'https://github.com/anconaesselmann/ValueTypeRepresentable.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  s.ios.deployment_target = '10.0'
  s.watchos.deployment_target = '3.0'
  s.source_files = 'ValueTypeRepresentable/Classes/**/*'
end
