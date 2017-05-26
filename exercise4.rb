class Paperboy

  attr_accessor :name, :experience
  attr_reader :earnings

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    @quota = @experience / 2 + 50
  end

  def deliver(start_address, end_address)
    total_houses = (end_address - start_address) + 1
    total_pay = pay (total_houses)

    @earnings += total_pay
    @experience += total_houses

    total_pay
  end

  def pay(total_houses)
    total_pay = total_houses * 0.25

    if total_houses < quota
      total_pay -= 2.00
    elsif total_houses > quota
      total_pay += 0.25 * (total_houses - quota)
    end

    total_pay
  end

  def report
    puts "I'm #{name}, I've delivered #{experience} and I've earned $#{earnings} so far!"
  end

end

tommy = Paperboy.new("Tommy")
puts tommy.quota
puts tommy.deliver(101,160)
puts tommy.earnings
puts
puts tommy.report
puts
puts tommy.quota
puts tommy.deliver(1,75)
puts tommy.earnings
puts
puts tommy.report
