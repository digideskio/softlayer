module Softlayer
  module Security
    autoload :Certificate, 'softlayer/security/certificate'
    autoload :SecureTransportCipher, 'softlayer/security/secure_transport_cipher'
    autoload :SecureTransportProtocol, 'softlayer/security/secure_transport_protocol'
    autoload :Directory, 'softlayer/security/directory'
    autoload :Ssh, 'softlayer/security/ssh'
  end
end
