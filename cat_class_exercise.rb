class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time <= 11
      puts "#{ @meal_time }AM"
    else
      puts "#{ @meal_time }PM"
    end
  end

  def meow
    "My name is #{ @name } and I LOVE to eat #{ @preferred_food } at #{ eats_at }"
  end

end


charlie = Cat.new("Charlie", "raw chicken", "7")
zoe = Cat.new("Zoe", "canned pate", "12")
