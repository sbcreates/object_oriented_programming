class BankAccount

  def initialize
    @balance = 100
    @interest_rate = 1.0006
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest(amount)
    @balance *= @interest_rate
  end

end
