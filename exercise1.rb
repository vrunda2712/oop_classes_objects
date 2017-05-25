class BankAccount

  attr_accessor :balance, :interest_rate

  def initialize (balance,interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance = balance + amount
  end

  def withdraw(amount)
    @balance = balance - amount
  end

  def gain_interest
    @balance = balance * ( 1 + interest_rate.to_f  / 100)
  end

end

bankaccount = BankAccount.new(1000,5)

puts
puts "Balance : #{bankaccount.balance}"
puts "Interest : #{bankaccount.interest_rate}"

puts "After deposit, total amount : #{bankaccount.deposit(100)}"

puts "After withdrawal, total amount : #{bankaccount.withdraw(50)}"
puts
puts "Increased balance : #{bankaccount.gain_interest}"
