class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
    "Congrats! You've just earned a life. Your life is at #{@lives}"
  end

  def collect_treasure
      @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
      "Awesome! You just earned a bonus life. Your gold is at #{@gold_coins} and life is at #{@lives}"
    else
      "Your gold is at #{@gold_coins}"
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
      "You've lost a life. Your life is at #{@lives} and health is at #{@health_points}"
    elsif @lives == 0
      restart
      "You're all out of lives. Time to restart. Resetting lives to #{@lives}, gold to #{@gold_coins}, and health to #{@health_points}."
    else
      "Your health is at #{@health_points}"
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end

player_one = Player.new

puts player_one.level_up
puts player_one.collect_treasure
13.times do
  puts player_one.do_battle(5)
end
