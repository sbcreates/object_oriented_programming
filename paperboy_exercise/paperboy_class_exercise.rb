class Paperboy

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    if @experience == 0
      @experience = 50
    else
      @experience += (@experience / 2) + 50
    end
  end

  def deliver(start_address, end_address)
    delivered = end_address + start_address + 1
    if delivered == @experience
      ( delivered * 0.25 )
    elsif delivered > @experience
      (( delivered - @experience ) * 0.50 ) + ( @experience * 0.25 )
    else
      ( delivered * 0.25 ) - 2
    end
  end

  def report
    "I'm #{@name} and I delivered #{@experience} papers and I've earned #{@earnings}"
  end

end

chuck = Paperboy.new("Chuck", 0, 0)

puts chuck.quota
puts chuck.deliver(101, 160)
# puts chuck.earnings
puts chuck.report

puts chuck.quota
puts chuck.deliver(1, 75)
# puts chuck.earnings
puts chuck.report
