class Wallet
  attr_reader :balance

  def initialize
    @balance = 1000
  end

  def transfer(amount, address)
    @balance -= amount
  end
end
