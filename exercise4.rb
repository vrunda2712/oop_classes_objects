class Paperboy

  attr_accessor :name, :experience
  attr_reader :earnings

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 0
  end

  def quota
    @quota = 50 + (@experience * 0.5)
  end

  def deliver(start_address, end_address)
    @earnings += (end_address - start_address) * 0.25
    @experience += (end_address - start_address)

    if (end_address - start_address) < quota
      @earnings -= 2.00
    end

    if (end_address - start_address) > quota
      @earnings += ((end_address - start_address) - quota) * 0.5
    end
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
