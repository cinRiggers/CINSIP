Pod::Spec.new do |spec|

  spec.name         = "CINSIP"
  spec.version      = "1.0.1"
  spec.summary      = "SIP framework for call."

  spec.description  = <<-DESC
			SIP framework for call, include media library framework
                   DESC

  spec.homepage     = "https://github.com/cinRiggers/CINSIP"
  
  spec.author       =  "Riggers"
  spec.source       = { :git => "https://github.com/cinRiggers/CINSIP.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = "9.2"
  
  spec.static_framework = false
  spec.requires_arc = true
  spec.pod_target_xcconfig =   {'ENABLE_BITCODE' => 'NO'} 
  
  spec.dependency 'CINRTC','~>1.0.1'
  spec.dependency 'CINWebRTC','~>1.0.1'
  
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  spec.vendored_frameworks = 'Framework/CINSIP.framework' 
  spec.resource = 'Framework/CINResource.bundle'

end
