class Paperboy

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    if @experience < 1
      @todays_quota = 50
    else
      @todays_quota = (@experience / 2) + 50
    end
  end

  def deliver(start_address, end_address)
    @delivered = (end_address - start_address) + 1
    @experience += @delivered
    if @delivered == @todays_quota
      @todays_earnings = (@delivered * 0.25)
    elsif @delivered > @todays_quota
      @todays_earnings = ((@delivered - @todays_quota) * 0.50) + (@todays_quota * 0.25)
    else
      @todays_earnings = ( @delivered * 0.25 ) - 2.0
    end
  end

  def earnings
    @earnings += @todays_earnings
  end

  def report
    "I'm #{@name} and I've delivered #{@experience} papers today and I've earned $#{@earnings}."
  end

end

chuck = Paperboy.new("Chuck", 0, 0)

puts chuck.quota
puts chuck.deliver(101, 160)
puts chuck.earnings
puts chuck.report

puts chuck.quota
puts chuck.deliver(1, 75)
puts chuck.earnings
puts chuck.report

puts chuck.quota
puts chuck.deliver(61, 200)
puts chuck.earnings
puts chuck.report
