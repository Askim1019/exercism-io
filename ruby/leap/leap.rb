class Year
  
  def self.leap?(year)
    if year % 100 == 0 && year % 400 != 0
      false
    elsif year % 4 == 0
      true
    else
      false
    end
  end

end

module BookKeeping
  VERSION = 3
end


p Year.leap?(2015)
p Year.leap?(2020)
p Year.leap?(2100)
p Year.leap?(2000)