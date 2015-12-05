require "./spec/spec_helper"
require "./lib/key_manager"
require "./lib/wallet"
require "base64"
require "openssl"

describe KeyManager do
  it "creates a private key" do
    wallet = Wallet.new
    manager = KeyManager.new(wallet)

    private_key = manager.private_key

    expect(private_key).to respond_to(:to_pem)
  end

  it "creates a public key" do
    wallet = Wallet.new
    manager = KeyManager.new(wallet)

    public_key = manager.public_key

    expect(public_key).to respond_to(:public_key)
  end
end
