require "base64"
require "openssl"

class KeyManager
  def initialize(wallet)
    @wallet = wallet
  end

  def private_key
    @private_key ||= OpenSSL::PKey::RSA.generate(2048)
  end

  def public_key
    @public_key ||= private_key.public_key
  end
end
