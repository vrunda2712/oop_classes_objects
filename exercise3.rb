class Player

  attr_accessor :gold_coins, :health_points, :lives

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points += 10
    end
    if @lives == 0
      restart
    end
  end

  def restart
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end
end

player = Player.new

puts "level_up = #{player.level_up} lives"
puts
10.times do
  player.collect_treasure
end
puts "After collecting treasure: #{player.gold_coins} gold coins"
puts
5.times do
  player.do_battle(5)
end
puts "After 5 battle: #{player.inspect}"
puts
player.restart
puts "Restart: #{player.inspect}"
