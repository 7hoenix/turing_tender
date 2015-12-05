require "./spec/spec_helper"
require "./lib/wallet"

describe Wallet do

  it "can transfer coins to an address" do
    wallet = Wallet.new
    initial_balance = wallet.balance
    amount = 100
    address = "XXXXXXXXXX"

    wallet.transfer(amount, address)

    expect(wallet.balance).to eq(initial_balance - amount)
  end

  it "can check its balance" do
    wallet = Wallet.new

    balance = wallet.balance

    expect(balance).to eq(1000)
  end
end
