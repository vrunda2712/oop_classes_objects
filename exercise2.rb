class Cat

attr_accessor :name, :preffered_food, :meal_time

  def initialize(name,preffered_food,meal_time)
    @name = name
    @preffered_food = preffered_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12
      "#{meal_time}AM"
    else
      "#{meal_time - 12}PM"
    end
  end

  def meow
    puts "My name is #{name} and I eat #{preffered_food} at #{eats_at} "
  end

end

cat1 = Cat.new("kitty","milk",11)

cat2 = Cat.new("meow","grain",20)

puts cat1.name
puts cat1.preffered_food
puts cat1.meal_time
puts
puts cat2.name
puts cat2.preffered_food
puts cat2.meal_time
puts
puts cat1.eats_at
puts cat2.eats_at
puts
puts cat1.meow
puts cat2.meow
